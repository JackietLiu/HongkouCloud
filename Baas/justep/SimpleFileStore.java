package justep;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.naming.NamingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;

import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.DataUtils;

public class SimpleFileStore {
	
	public static JSONObject service(JSONObject params, ActionContext context) throws ServletException, IOException, SQLException, NamingException, FileUploadException {
		//String id=params.getString("id");
	
		HttpServletRequest request = (HttpServletRequest)context.get(ActionContext.REQUEST);
		HttpServletResponse response = (HttpServletResponse)context.get(ActionContext.RESPONSE);
		if(request.getMethod().equals("GET")){
			doGet(request, response);
		}else if(request.getMethod().equals("POST")){
			doPost(request, response);
		}
		return null;
	}
	
	static String docStorePath;
	static File docStoreDir;
	static long sizeInBytes ;
	static{
		String baasPath = Thread.currentThread().getContextClassLoader().getResource("").getPath() + ".." + File.separator + ".."+ File.separator + ".."+ File.separator + "..";
		docStorePath = baasPath + File.separator + "UpLoadFiles" + File.separator + "NetDisk";
		File file = new File(docStorePath);
		//兼容以前存储目录
		if(file.exists() && file.isDirectory()){
			docStoreDir = file;
		}
	}
	
	
	public static File getDocStoreDir(HttpServletRequest request) {
		String justepHome = System.getenv("JUSTEP_HOME");
		
		if(justepHome != null && docStoreDir == null ){
			docStorePath =  justepHome + "/UpLoadFiles/NetDisk/";
			File file = new File(docStorePath);
			if(!file.exists()){
				file.mkdirs();
			}
			docStoreDir = file;
		}else if(docStoreDir == null){
			ServletContext context = request.getSession().getServletContext();
			String path = context.getRealPath("/");
			docStorePath =  path + "../../UpLoadFiles/NetDisk/";
			File file = new File(docStorePath);
			if(!file.exists()){
				file.mkdirs();
			}
			docStoreDir = file;
		}
		return docStoreDir;
	}
	
	
	/**
		get为获取文件 浏览或者下载
	**/
	private static void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getDocStoreDir(request);
		String operateType = request.getParameter("operateType");
		if("copy".equals(operateType)){
			copyFile(request,response);
		}else{
			getFile(request,response);
		}
	}
	
	
	private static void copyFile(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String ownerID = request.getParameter("ownerID");
		String targetOwnerID = request.getParameter("targetOwnerID");
		String storeFileName = request.getParameter("storeFileName");
		File file = new File(docStorePath + File.separator +ownerID + File.separator + storeFileName);
		File targetFile = new File(docStorePath + File.separator + targetOwnerID + File.separator + storeFileName);
		FileUtils.copyFile(file, targetFile);
	}
	
	
	private static final int BUFFER_SIZE = 32768 * 8;
	private static void getFile(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		String ownerID = request.getParameter("ownerID");
		String realFileName = URLEncoder.encode(request.getParameter("realFileName"),"utf-8");
		String storeFileName = request.getParameter("storeFileName");
		String operateType = request.getParameter("operateType");
		/*String fileSize = request.getParameter("fileSize");*/
		
		File file = new File(docStorePath + File.separator +ownerID + File.separator + storeFileName);
		FileInputStream fis = new FileInputStream(file);
		
		/*response.setContentType(mimeType);*/
        /*response.setHeader("Content-Length", String.valueOf(part.getSize()));*/
		response.setHeader("Cache-Control", "pre-check=0, post-check=0, max-age=0");
		
		String fileNameKey = "filename";
		/*UserAgent ua = com.justep.ui.util.NetUtils.getUserAgent(request);
		if(Browser.FIREFOX.equals(ua.getBrowser().getGroup())){
			fileNameKey = "filename*";
		}*/
		if("download".equals(operateType)){
			response.addHeader("Content-Disposition", "attachment; "+fileNameKey+"=\"" + realFileName + "\"");
		}else{
			response.addHeader("Content-Disposition", "inline; "+fileNameKey+"=\"" + realFileName + "\"");
		}
		
		OutputStream os = response.getOutputStream();
        byte[] buffer = new byte[BUFFER_SIZE];
        try {
            int read;
            while ((read = fis.read(buffer)) != -1) {
            	os.write(buffer, 0, read);
            }
        } finally {
            fis.close();
        }
	}

	/**
		post为上传
	**/
	protected static  void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {   
		getDocStoreDir(request);
		String contentType = request.getContentType();
		try {
			if("application/octet-stream".equals(contentType)){
				storeOctStreamFile(request,response);
			}else if(contentType !=null && contentType.startsWith("multipart/")){
				storeFile(request,response);
			}else{
				throw new RuntimeException("not supported contentType");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new IOException("storeFile异常");
		}
		response.getWriter().write("");
	}

	private static void storeOctStreamFile(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		InputStream in = null;
		FileOutputStream storeStream = null;
		try{
			String ownerID = request.getParameter("ownerID");
			String storeFileName = request.getParameter("storeFileName");
			/*System.out.println("storeOctStreamFile.storeFileName="+storeFileName);
			System.out.println("storeOctStreamFile.ownerID="+ownerID);*/
			in = request.getInputStream();
			String storePath = docStorePath + File.separator + ownerID;
			getOrCreateFile(storePath);
			File toStoreFile = new File(storePath + File.separator + storeFileName);
	        storeStream = new FileOutputStream(toStoreFile);
	        IOUtils.copy(in, storeStream);
		}finally{
			IOUtils.closeQuietly(in);
			IOUtils.closeQuietly(storeStream);
		}
	}
	
	private static File getOrCreateFile(String path) {
		File storeDir = new File(path);
        if(!(storeDir.exists() && storeDir.isDirectory())){
        	storeDir.mkdirs();
        }
        return storeDir;
	}
	
	public static List<FileItem> parseMultipartRequest(HttpServletRequest request) throws FileUploadException{
		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletContext servletContext = request.getSession().getServletContext();
		File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
		factory.setRepository(repository);
		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		// Parse the request
		@SuppressWarnings("unchecked")
		List<FileItem> items = upload.parseRequest(request);
		return items;
	}
	
	private static void storeFile(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HashMap<String,String> params = new HashMap<String,String>();
		List<FileItem> items =  parseMultipartRequest(request);
		//System.out.println(items);
		Iterator<FileItem> iter = items.iterator();
		FileItem fileItem = null;
		while (iter.hasNext()) {
		    FileItem item = iter.next();
		    if (item.isFormField()) {
		    	String name = item.getFieldName();
	            String value = item.getString();
	            //System.out.println("string--"+value);
		        params.put(name, value);
		    } else {
/*		    	String fieldName = item.getFieldName();
		        String fileName = item.getName();
		        String contentType = item.getContentType();
		        boolean isInMemory = item.isInMemory();*/
               sizeInBytes = item.getSize();
		    	fileItem = item;
		    }
		}

		//System.out.println("storeFile.params="+params);	
		if(fileItem != null){
			String storePath = docStorePath + File.separator + params.get("ownerID");
	        File storeDir = new File(storePath);
	        if(!(storeDir.exists() && storeDir.isDirectory())){
	        	storeDir.mkdirs();
	        }
	        File toStoreFile = new File(storePath + File.separator + params.get("storeFileName"));
	        //System.out.println(params.get("storeFileName"));
	        fileItem.write(toStoreFile);
		}
				
	}

	public static JSONObject deleteFile(JSONObject params, ActionContext context) throws SQLException, 
	NamingException, FileUploadException {	
		String storeFileName = params.getString("storeFileName");
		String ownerID = params.getString("ownerID");
		String storePath = docStorePath + File.separator + ownerID;
		JSONObject ret = new JSONObject();
		//取出文件的绝对路径，然后用File方法删除相应文件。
         
		File file = new File(storePath + File.separator + storeFileName);
		/*System.out.println(docStorePath);*/
		File delFile = new File(file.getAbsolutePath());
		//取出文件的绝对路径，然后用File方法删除相应文件。
		if (delFile.exists()) {
			delFile.delete();
		}
        /*ret.put("", value)*/
		return ret;
	}
	public static JSONObject getFileSize(JSONObject params, ActionContext context) throws SQLException, 
	NamingException, FileUploadException {	
		String storeFileName = params.getString("storeFileName");
		String ownerID = params.getString("ownerID");
		String storePath = docStorePath + File.separator + ownerID;
		JSONObject ret = new JSONObject();
		//取出文件的绝对路径，然后用File方法删除相应文件。        
		File file = new File(storePath + File.separator + storeFileName);
		/*System.out.println(docStorePath);*/
		File currentFile = new File(file.getAbsolutePath());
		//取出文件的绝对路径，然后用File方法删除相应文件。
		System.out.println(sizeInBytes);
		if (currentFile.exists()) {
			 ret.put("size", sizeInBytes);
		}    
		return ret;

	}
	
	public static JSONObject getTotalFileSize(JSONObject params, ActionContext context) throws SQLException, 
	NamingException, FileUploadException {	
		String ownerID = params.getString("ownerID");
		String storePath = docStorePath + File.separator + ownerID;
		JSONObject ret = new JSONObject();
		File directory = new File(storePath);
		if (directory.exists()) {
			 //如果是目录则递归计算其内容的总大小    
            if (directory.isDirectory()) {     
                File[] children = directory.listFiles();     
                double size = 0;     
                for (File f : children)     
                    size += getDirSize(f);     
                ret.put("totalSize", size);  
                ret.put("state", 1);
            }   		
		}else {
			System.out.println("no more files");
			ret.put("warn", "尚未上传过文件");
			ret.put("state", 0);
		}      
		return ret;

	}
	
	public static double getDirSize(File file) {     
        //判断文件是否存在     
        if (file.exists()) {     
            //如果是目录则递归计算其内容的总大小    
            if (file.isDirectory()) {     
                File[] children = file.listFiles();     
                double size = 0;     
                for (File f : children)     
                    size += getDirSize(f);     
                return size;     
            } else {//如果是文件则直接返回其大小,以“兆”为单位   
                double size = (double) file.length() / 1024 / 1024;        
                return size;     
            }     
        } else {     
            System.out.println("文件或者文件夹不存在，请检查路径是否正确！");     
            return 0.0;     
        }     
    }     
	
}
