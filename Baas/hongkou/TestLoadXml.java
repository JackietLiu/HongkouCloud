package hongkou;

import java.io.IOException;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import javax.naming.NamingException;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.xpath.XPathExpressionException;
import org.apache.commons.httpclient.HttpException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import com.alibaba.fastjson.JSONObject;
import com.justep.baas.action.ActionContext;
import com.justep.baas.data.sql.SQLException;
public class TestLoadXml { 

	public static JSONObject getXml(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException {

		String xml = params.getString("xml");
		xml = xml.replaceAll("&lt;", "<");	   
		xml = xml.replaceAll("&gt;", ">");	
		xml = xml.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n", "");
		xml = xml.replace("<string xmlns=\"http://tempuri.org/\">", "");
		xml = xml.replace("</string>", "");
		//System.out.println(xml);
		JSONObject jo = new JSONObject();
		try {   									

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  

			//	      System.out.println("class name: " + dbf.getClass().getName());  

			// step 2:获得具体的dom解析器  
			DocumentBuilder builder = dbf.newDocumentBuilder();  

			//	      System.out.println("class name: " + db.getClass().getName());  

			// step3: 解析一个xml文档，获得Document对象（根结点）  
			Document document = builder.parse(new InputSource(new StringReader(xml)));
			NodeList list = document.getElementsByTagName("Info");

			ArrayList<String> list2 = new ArrayList<String>();
			ArrayList<String> list3 = new ArrayList<String>();
			ArrayList<String> list4 = new ArrayList<String>();
			//ArrayList<String> list5 = new ArrayList<String>();
			for (int i = 0; i < list.getLength(); i++) {
				Element element = (Element) list.item(i);
				String id = element.getElementsByTagName("InfoID").item(0).getFirstChild().getNodeValue();
				//System.out.println("id :"+id);
				String title = element.getElementsByTagName("Title").item(0).getFirstChild().getNodeValue();
				//System.out.println("title :"+title);
				String date = element.getElementsByTagName("InfoDate").item(0).getFirstChild().getNodeValue();
				//String source = element.getElementsByTagName("source").item(0).getFirstChild().getNodeValue();

				//System.out.println("source :"+source);
				list2.add(id);
				list3.add(title);
				list4.add(date.substring(0,10));
				//list5.add(source);

			}

			jo.put("title", list3);
			jo.put("date", list4);
			jo.put("id", list2);
			//	jo.put("source", list5);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return jo;

	}
	public static JSONObject get_HK_News(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException {

		String xml = params.getString("xml");
		xml = xml.replaceAll("&lt;", "<");	   
		xml = xml.replaceAll("&gt;", ">");	
		xml = xml.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n", "");
		xml = xml.replace("<string xmlns=\"http://tempuri.org/\">", "");
		xml = xml.replace("<Title>", "<Title><![CDATA[");
		xml = xml.replace("</Title>", "]]></Title>");

		xml = xml.replace("</string>", "");
		System.out.println(xml);
		JSONObject jo = new JSONObject();
		try {   									

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  

			//	      System.out.println("class name: " + dbf.getClass().getName());  pos

			// step 2:获得具体的dom解析器  
			DocumentBuilder builder = dbf.newDocumentBuilder();  

			//	      System.out.println("class name: " + db.getClass().getName());  

			// step3: 解析一个xml文档，获得Document对象（根结点）  
			Document document = builder.parse(new InputSource(new StringReader(xml)));
			NodeList list = document.getElementsByTagName("Info");

			ArrayList<String> list2 = new ArrayList<String>();
			ArrayList<String> list3 = new ArrayList<String>();
			ArrayList<String> list4 = new ArrayList<String>();
			ArrayList<String> list5 = new ArrayList<String>();
			for (int i = 0; i < list.getLength(); i++) {
				Element element = (Element) list.item(i);
				String id = element.getElementsByTagName("InfoID").item(0).getFirstChild().getNodeValue();
				//System.out.println("id :"+id);
				String title = element.getElementsByTagName("Title").item(0).getFirstChild().getNodeValue();
				//System.out.println("title :"+title);
				String date = element.getElementsByTagName("InfoDate").item(0).getFirstChild().getNodeValue();
				String source = element.getElementsByTagName("source").item(0).getFirstChild().getNodeValue();

				//System.out.println("source :"+source);
				list2.add(id);
				list3.add(title);
				list4.add(date.substring(0,10));
				list5.add(source);
			}

			jo.put("title", list3);
			jo.put("date", list4);
			jo.put("id", list2);
			jo.put("source", list5);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return jo;
	}
	public static JSONObject getXml2(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException {

		String xml = params.getString("xml");
		xml = xml.replace("&amp;", "");
		xml = xml.replace("nbsp;", "");
		/*xml = xml.replace("<p>", "");
		xml = xml.replace("</p>", "");*/
		xml = xml.replaceAll("&lt;", "<");	   
		xml = xml.replaceAll("&gt;", ">");
		xml = xml.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n", ""); 		
		xml = xml.replace("<string xmlns=\"http://tempuri.org/\">", "");

		xml = xml.replace("</string>", "");

		//xml.replace("font-size: 12pt;", "");
		xml = xml.trim();
		System.out.println(xml);
		JSONObject jo = new JSONObject();
		try {   									

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  

			//	      System.out.println("class name: " + dbf.getClass().getName());  

			// step 2:获得具体的dom解析器  
			DocumentBuilder builder = dbf.newDocumentBuilder();  

			//	      System.out.println("class name: " + db.getClass().getName());  

			// step3: 解析一个xml文档，获得Document对象（根结点）  
			Document document = builder.parse(new InputSource(new StringReader(xml)));
			NodeList list = document.getElementsByTagName("UserArea");

			ArrayList<String> list2 = new ArrayList<String>();
			ArrayList<String> list3 = new ArrayList<String>();
			ArrayList<String> list4 = new ArrayList<String>();
			ArrayList<String> list5 = new ArrayList<String>();
			for (int i = 0; i < list.getLength(); i++) {
				Element element = (Element) list.item(i);
				String content = element.getElementsByTagName("infocontent").item(0).getFirstChild().getNodeValue();				
				String title = element.getElementsByTagName("title").item(0).getFirstChild().getNodeValue();
				String date = element.getElementsByTagName("infodate").item(0).getFirstChild().getNodeValue();
				String clicktimes = element.getElementsByTagName("clicktimes").item(0).getFirstChild().getNodeValue();       
				list2.add( content.replace("FONT-SIZE: ", "size").replace("FONT: ", "size").replace("font-size: ", "size").replace("<img", "<img style=\"height:240px; width:100%; display:block;margin-right:60px;\""));
				list3.add(title);
				list4.add(date.substring(0,10));
				list5.add(clicktimes);
			}
			System.out.println(list2 +"\n"+ list3 + "\n" + list4);

			/*			
            JSONArray jsonArray1 = JSONArray.fromObject(list2);
            System.out.println(jsonArray1);*/
			jo.put("title", list3);
			jo.put("date", list4);
			jo.put("content", list2);
			jo.put("clicktimes", list5);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return jo;
	}
	public static JSONObject getXml3(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException {
		String xml = params.getString("xml");			
		xml = xml.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n", "");
		xml = xml.replace("<string xmlns=\"http://tempuri.org/\">", "");
		xml = xml.replace("</string>", "");

		//System.out.println(xml);
		JSONObject jo = new JSONObject();
		jo.put("title", xml);
		return jo;

	}	
	public static JSONObject md5(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException, NoSuchAlgorithmException, UnsupportedEncodingException {
		JSONObject jo = new JSONObject();
		String md5String = params.getString("md5String");	
		System.out.println(md5String);
		// 生成一个MD5加密计算摘要
		MessageDigest md = MessageDigest.getInstance("MD5");
		// 计算md5函数
		md.update(md5String.getBytes("utf-8"));
		// digest()最后确定返回md5 hash值，返回值为8为字符串。因为md5 hash值是16位的hex值，实际上就是8位的字符
		// BigInteger函数则将8位的字符串转换成16位hex值，用字符串来表示；得到字符串形式的hash值
		String md5=new BigInteger(1, md.digest()).toString(16);
		//BigInteger会把0省略掉，需补全至32位
		String md5Fill = fillMD5(md5);

		// System.out.println(md5Fill);
		jo.put("md5", md5Fill);
		return jo;

	}
	private static String fillMD5(String md5) {
		// TODO 自动生成的方法存根
		return md5.length()==32?md5:fillMD5("0"+md5);
	}
	public static JSONObject get_HK_NewsDetail(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException {
		String xml = params.getString("xml");
		xml = xml.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n", "");
		xml = xml.replace("<string xmlns=\"http://tempuri.org/\">", "");
		xml = xml.replace("</string>", "");
		xml = xml.replaceAll("&lt;", "<");	   
		xml = xml.replaceAll("&gt;", ">");
		xml = xml.replaceAll("&nbsp;", " ");

		//System.out.println(xml);
		JSONObject jo = new JSONObject();
		jo.put("content", xml);
		return jo;

	}
	public static JSONObject getXml5(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException {
		String xml = params.getString("xml");	

		xml = xml.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n", "");
		xml = xml.replace("<string xmlns=\"http://tempuri.org/\">", "");
		xml = xml.replace("</string>", "");
		xml = xml.replaceAll("&lt;", "<");	   
		xml = xml.replaceAll("&gt;", ">");
		//System.out.println(xml);
		JSONObject jo = new JSONObject();
		jo.put("title", xml);
		return jo;

	}
	public static JSONObject getXml4(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException {
		String xml = params.getString("xml");	

		xml = xml.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n", "");
		xml = xml.replace("<string xmlns=\"http://tempuri.org/\">", "");
		xml = xml.replace("</string>", "");
		xml = xml.replaceAll("&lt;", "<");	   
		xml = xml.replaceAll("&gt;", ">");
		//System.out.println(xml);
		JSONObject jo = new JSONObject();
		try {   									
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
			// System.out.println("class name: " + dbf.getClass().getName());  
			// step 2:获得具体的dom解析器  
			DocumentBuilder builder = dbf.newDocumentBuilder();  
			//	      System.out.println("class name: " + db.getClass().getName());  

			// step3: 解析一个xml文档，获得Document对象（根结点）  
			Document document = builder.parse(new InputSource(new StringReader(xml)));
			NodeList list = document.getElementsByTagName("Table1");
			ArrayList<String> list2 = new ArrayList<String>();
			ArrayList<String> list3 = new ArrayList<String>();
			ArrayList<String> list4 = new ArrayList<String>();
			for (int i = 0; i < list.getLength(); i++) {
				Element element = (Element) list.item(i);
				String fileName = element.getElementsByTagName("MyFileInfo").item(0).getFirstChild().getNodeValue();		
				String dlUrl = element.getElementsByTagName("DLUrl").item(0).getFirstChild().getNodeValue();
				String file_size = element.getElementsByTagName("File_Size").item(0).getFirstChild().getNodeValue();
				list2.add(fileName);
				list3.add(dlUrl);
				list4.add(file_size);
				/*                System.out.println(fileName);
                System.out.println(dlUrl);
                System.out.println(file_size);*/
			}
			jo.put("fileName", list2);
			jo.put("dlUrl", list3);
			jo.put("fileSize", list4);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jo;

	}
	/**
	 * 图片新闻列表
	 * 
	 * */
	public static JSONObject loadSoapHeader(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException, HttpException, IOException {
		JSONObject jo = new JSONObject();	
		String soapRD ="";
		String httpposturl = ResourceUtil.getConfigByName("httpposturl");
		System.out.println(httpposturl);
		soapRD = HttpClientUtil.sendHttpPost(httpposturl+"getLoadXmlController.do?loadSoapHeader");		
		if (soapRD.startsWith("\"")) {
			soapRD = soapRD.substring(1);
		}
		if (soapRD.endsWith("\"")) {
			soapRD = soapRD.substring(0,soapRD.length() - 1);
		}		
			try {   									

				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
				//	      System.out.println("class name: " + dbf.getClass().getName());  

				// step 2:获得具体的dom解析器  
				DocumentBuilder builder = dbf.newDocumentBuilder();  
				//	      System.out.println("class name: " + db.getClass().getName());  

				// step3: 解析一个xml文档，获得Document对象（根结点）  
				Document document = builder.parse(new InputSource(new StringReader(soapRD)));
				NodeList list = document.getElementsByTagName("Row");

				ArrayList<String> idList = new ArrayList<String>();
				ArrayList<String> urlList = new ArrayList<String>();
				ArrayList<String> filelList = new ArrayList<String>();
				ArrayList<String> titlelList = new ArrayList<String>();
				for (int i = 0; i < list.getLength(); i++) {
					Element element = (Element) list.item(i);
					String id = element.getElementsByTagName("infoid").item(0).getFirstChild().getNodeValue();
					//	System.out.println("id :"+id);
					String url = element.getElementsByTagName("url_info").item(0).getFirstChild().getNodeValue();
					//System.out.println("url_info :"+url);
					String filecontent = element.getElementsByTagName("img_filecontent").item(0).getFirstChild().getNodeValue();
					//System.out.println("image :"+filecontent);
					String title = element.getElementsByTagName("title").item(0).getFirstChild().getNodeValue();
					//	System.out.println("title :"+title);
					idList.add(id);
					urlList.add(url);
					filelList.add(filecontent);
					titlelList.add(title);
				}
				jo.put("id", idList);
				jo.put("url", urlList);
				jo.put("filecontent", filelList);
				jo.put("title", titlelList);

			} catch (Exception es) {
				es.printStackTrace();
			}

		return jo;
	}
	
	/**
	 * 图片新闻详情
	 * 
	 * */
	public static JSONObject loadNewsDetail(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException, HttpException, IOException {
		JSONObject jo = new JSONObject();
		String id = params.getString("imageID");
		String soapRD ="";
		String httpposturl = ResourceUtil.getConfigByName("httpposturl");
		soapRD = HttpClientUtil.sendHttpPost(httpposturl+"getLoadXmlController.do?loadNewsDetail&infoid="+id+"");		
		if (soapRD.startsWith("\"")) {
			soapRD = soapRD.substring(1);
		}
		if (soapRD.endsWith("\"")) {
			soapRD = soapRD.substring(0,soapRD.length() - 1);
		}					
		soapRD = soapRD.replaceAll("\\\\", "");
			//System.out.println(soapRD);
			try {   									

				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
				DocumentBuilder builder = dbf.newDocumentBuilder();  
				Document document = builder.parse(new InputSource(new StringReader(soapRD)));
				NodeList list = document.getElementsByTagName("Row");

				for (int i = 0; i < list.getLength(); i++) {
					Element element = (Element) list.item(i);
					String infoContent = element.getElementsByTagName("infocontent").item(0).getFirstChild().getNodeValue();
					jo.put("newsDetail",  infoContent.replace("FONT: ", " ").replace("font: ", " ").replace("FONT-SIZE: ", "size").replace("font-size: ", "size").replace("<img", "<img style=\"height:240px; width:100%; display:block;margin-right:60px;\""));
				}
			}catch (Exception es) {
				es.printStackTrace();
			}

		 
		return jo;
	}
	
	/**
	 * 区政府、部门、街道 文件列表
	 * 
	 * */
	public static JSONObject loadFileList(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException, HttpException, IOException {	    
		JSONObject jo = new JSONObject();		
		String categoryNum = params.getString("categoryNum");
		String soapRD ="";
		String httpposturl = ResourceUtil.getConfigByName("httpposturl");
		soapRD = HttpClientUtil.sendHttpPost(httpposturl+"getLoadXmlController.do?loadFileList&categoryNum="+categoryNum+"");		
		if (soapRD.startsWith("\"")) {
			soapRD = soapRD.substring(1);
		}
		if (soapRD.endsWith("\"")) {
			soapRD = soapRD.substring(0,soapRD.length() - 1);
		}							
		System.out.println(soapRD);
		try {   									

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
			DocumentBuilder builder = dbf.newDocumentBuilder();  
			Document document = builder.parse(new InputSource(new StringReader(soapRD)));
			NodeList list = document.getElementsByTagName("Row");
			ArrayList<String> idList = new ArrayList<String>();
			ArrayList<String> titleList = new ArrayList<String>();
			ArrayList<String> dateList = new ArrayList<String>();
			for (int i = 0; i < list.getLength(); i++) {
				Element element = (Element) list.item(i);
				String infoid = element.getElementsByTagName("infoid").item(0).getFirstChild().getNodeValue();
				String title = element.getElementsByTagName("Title").item(0).getFirstChild().getNodeValue();
				String date = element.getElementsByTagName("InfoDate").item(0).getFirstChild().getNodeValue();

				// jo.put("newsDetail", infoContent.replace("font-size: 12pt;", ""));
				idList.add(infoid);
				titleList.add(title);
				dateList.add(date);
			}

			jo.put("id", idList);					
			jo.put("date", dateList);
			jo.put("title", titleList);
		}catch (Exception es) {
			es.printStackTrace();
		}


		return jo;
	}
	/**
	 * 虹口新闻、社区新闻、部门动态详情
	 * 
	 * */
	public static JSONObject loadHkNewsDetail(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException, HttpException, IOException {
		JSONObject jo = new JSONObject();
		//新闻列表中的infoid
		String infoid = params.getString("infoid");
		String soapRD = "";
		String httpposturl = ResourceUtil.getConfigByName("httpposturl");
		soapRD = HttpClientUtil.sendHttpPost(httpposturl+"getLoadXmlController.do?loadHkNewsDetail&infoid="+infoid+"");		
		if (soapRD.startsWith("\"")) {
			soapRD = soapRD.substring(1);
		}
		if (soapRD.endsWith("\"")) {
			soapRD = soapRD.substring(0,soapRD.length() - 1);
		}					
		//soapRD = soapRD.replaceAll("\\\\", "");
		soapRD = soapRD.replaceAll("\'", "\"");
		try {   									

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
			DocumentBuilder builder = dbf.newDocumentBuilder();  
			Document document = builder.parse(new InputSource(new StringReader(soapRD)));
			NodeList list = document.getElementsByTagName("Row");

			for (int i = 0; i < list.getLength(); i++) {
				Element element = (Element) list.item(i);	
				String infocontent = element.getElementsByTagName("InfoContent").item(0).getFirstChild().getNodeValue();
				jo.put("content",  infocontent.replaceAll("a", "span").replace("FONT-SIZE: ", "size").replace("font: ", " ").replace("FONT: ", " ").replace("font: ", " ").replace("font-size: ", "size").replace("<img", "<img style=\"height:240px; width:100%; display:block;margin-right:60px;\""));
				//replace(" FONT-SIZE: 12pt", "").replace("font-size: 12pt;", "").replace("FONT-SIZE: 16pt", "").replace("FONT-SIZE: medium", "").replace("FONT-SIZE: 14pt", "")
			}
		}catch (Exception es) {
			es.printStackTrace();
		}
		return jo;
	}
	/**
	 * 区政府、部门、街道 文件详情
	 * 
	 * */
	public static JSONObject loadFileDetail(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException, HttpException, IOException {
		JSONObject jo = new JSONObject();
		String infoid = params.getString("id");
		String soapRD = "";
		String httpposturl = ResourceUtil.getConfigByName("httpposturl");
		soapRD = HttpClientUtil.sendHttpPost(httpposturl+"getLoadXmlController.do?loadFileDetail&infoid="+infoid+"");
		if (soapRD.startsWith("\"")) {
			soapRD = soapRD.substring(1);
		}
		if (soapRD.endsWith("\"")) {
			soapRD = soapRD.substring(0,soapRD.length() - 1);
		}
		//soapRD = soapRD.replaceAll("\\\\", "");
		soapRD = soapRD.replaceAll("\'", "\"");
		try {   									

			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
			DocumentBuilder builder = dbf.newDocumentBuilder();  
			Document document = builder.parse(new InputSource(new StringReader(soapRD)));
			NodeList list = document.getElementsByTagName("Row");

			for (int i = 0; i < list.getLength(); i++) {
				Element element = (Element) list.item(i);
				String infoType = element.getElementsByTagName("InfoType").item(0).getFirstChild().getNodeValue();
				if(infoType.equals("Pdf")){
					String filePath = element.getElementsByTagName("FilePath").item(0).getFirstChild().getNodeValue();
					System.out.println(filePath);
					jo.put("filePath", filePath);
				}else {
					String infocontent = element.getElementsByTagName("InfoContent").item(0).getFirstChild().getNodeValue();
					System.out.println(infocontent);
					jo.put("content", infocontent.replace("FONT-SIZE: ", "size").replace("font: ", " ").replace("FONT: ", " ").replace("font: ", " ").replace("font-size: ", "size"));
				}			
			}
		}catch (Exception es) {
			es.printStackTrace();
		}


		return jo;
	}
	/**
	 * 虹口新闻、社区新闻、部门动态列表
	 * 
	 * */

	public static JSONObject loadNewsList(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException, HttpException, IOException {
		JSONObject jo = new JSONObject();
		String categoryNum = params.getString("categoryNum");
		String soapRD = "";
		String httpposturl = ResourceUtil.getConfigByName("httpposturl");
		soapRD = HttpClientUtil.sendHttpPost(httpposturl+"getLoadXmlController.do?loadNewsList&categoryNum="+categoryNum+"");
		if (soapRD.startsWith("\"")) {
			soapRD = soapRD.substring(1);
		}
		if (soapRD.endsWith("\"")) {
			soapRD = soapRD.substring(0,soapRD.length() - 1);
		}
		try {   									
			DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
			DocumentBuilder builder = dbf.newDocumentBuilder();  
			Document document = builder.parse(new InputSource(new StringReader(soapRD)));
			NodeList list = document.getElementsByTagName("Row");
			ArrayList<String> idList = new ArrayList<String>();
			ArrayList<String> titleList = new ArrayList<String>();
			ArrayList<String> dateList = new ArrayList<String>();
			for (int i = 0; i < list.getLength(); i++) {
				Element element = (Element) list.item(i);
				String infoid = element.getElementsByTagName("InfoID").item(0).getFirstChild().getNodeValue();
				String title = element.getElementsByTagName("Title").item(0).getFirstChild().getNodeValue();
				String date = element.getElementsByTagName("InfoDate").item(0).getFirstChild().getNodeValue();
				idList.add(infoid);
				titleList.add(title);
				dateList.add(date);
			}
			jo.put("id", idList);					
			jo.put("date", dateList);
			jo.put("title", titleList);
		}catch (Exception es) {
			es.printStackTrace();
		}

		return jo;
	}
}
