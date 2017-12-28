package com;


import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

 
import javax.naming.NamingException;
import javax.xml.namespace.QName;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.rpc.ParameterMode;
import javax.xml.soap.SOAPException;

import javax.xml.xpath.XPathExpressionException;




import org.apache.axis.client.Call;
import org.apache.axis.client.Service;
import org.apache.axis.encoding.XMLType;
import org.apache.axis.message.SOAPBodyElement;
import org.apache.axis.message.SOAPHeaderElement;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.methods.InputStreamRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;
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

				//String head = element.getElementsByTagName("HeadNewsAttachGuid").item(0).getFirstChild().getNodeValue();


				list2.add(id);
				list3.add(title);
				list4.add(date.substring(0,10));
				//list5.add(head);
			}
			//System.out.println(list2 +"\n"+ list3 + "\n" + list4);

			/*			
            JSONArray jsonArray1 = JSONArray.fromObject(list2);
            System.out.println(jsonArray1);*/
			jo.put("title", list3);
			jo.put("date", list4);
			jo.put("id", list2);
			jo.put("head", list5);

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
				list2.add(content.replace("font-size: 12pt;", ""));
				list3.add(title);
				list4.add(date.substring(0,10));
				list5.add(clicktimes);
			}
			//System.out.println(list2 +"\n"+ list3 + "\n" + list4);

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
		System.out.println(xml);
		xml = xml.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n", "");
		xml = xml.replace("<string xmlns=\"http://tempuri.org/\">", "");
		xml = xml.replace("</string>", "");
		System.out.println(xml);
		JSONObject jo = new JSONObject();

		jo.put("data", xml);
		return jo;

	}
	public static JSONObject loadSoapHeader(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException {
		JSONObject jo = new JSONObject();	
		try {
			String endpoint = "http://www.shhk.gov.cn/hkmobileservice/appservice.asmx";
			Service service = new Service();
			Call call = (Call) service.createCall();
			call.setTargetEndpointAddress(new java.net.URL(endpoint));
			call.setUseSOAPAction(true);
			call.setSOAPActionURI("http://tempuri.org/" + "SelectWebInfoList");
			call.setOperationName(new QName("hkmobileservice","SelectWebInfoList"));
			//call.addParameter(new QName("http://tempuri.org/","AuthHeader"), org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);
			//call.addParameter(new QName("http://tempuri.org/","UserPwd"), org.apache.axis.encoding.XMLType.XSD_STRING,ParameterMode.IN);
			call.setReturnType(org.apache.axis.encoding.XMLType.XSD_STRING);

			//由于需要认证，故需要设置调用的用户名和密码。  
			SOAPHeaderElement soapHeaderElement = new SOAPHeaderElement("http://tempuri.org/", "AuthHeader");   
			soapHeaderElement.setNamespaceURI("http://tempuri.org/");   
			try{   
				soapHeaderElement.addChildElement("UserCode").setValue("shhk");   
				soapHeaderElement.addChildElement("UserPwd").setValue("gtig_newtech**##");

			}catch (SOAPException se) {   
				se.printStackTrace();   
			}
			call.addHeader(soapHeaderElement);  
			call.setReturnType(XMLType.XSD_STRING);
			call.addParameter("op", XMLType.XSD_STRING, ParameterMode.IN);
			String xml = (String) call.invoke(new Object[] {"11111"});			
			try {   									

				DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
				//	      System.out.println("class name: " + dbf.getClass().getName());  

				// step 2:获得具体的dom解析器  
				DocumentBuilder builder = dbf.newDocumentBuilder();  
				//	      System.out.println("class name: " + db.getClass().getName());  

				// step3: 解析一个xml文档，获得Document对象（根结点）  
				Document document = builder.parse(new InputSource(new StringReader(xml)));
				NodeList list = document.getElementsByTagName("Row");

				ArrayList<String> idList = new ArrayList<String>();
				ArrayList<String> urlList = new ArrayList<String>();
				ArrayList<String> filelList = new ArrayList<String>();
				ArrayList<String> titlelList = new ArrayList<String>();
				for (int i = 0; i < list.getLength(); i++) {
					Element element = (Element) list.item(i);
					String id = element.getElementsByTagName("infoid").item(0).getFirstChild().getNodeValue();
					//System.out.println("id :"+id);
					String url = element.getElementsByTagName("url_info").item(0).getFirstChild().getNodeValue();
					//System.out.println("title :"+title);
					String filecontent = element.getElementsByTagName("img_filecontent").item(0).getFirstChild().getNodeValue();
					String title = element.getElementsByTagName("title").item(0).getFirstChild().getNodeValue();

					idList.add(id);
					urlList.add(url);
					filelList.add(filecontent);
					titlelList.add(title);
				}
				//System.out.println(urlList +"\n"+ filelList + "\n" + titlelList);
				jo.put("id", idList);
				jo.put("url", urlList);
				jo.put("filecontent", filelList);
				jo.put("title", titlelList);
				/*			
	            JSONArray jsonArray1 = JSONArray.fromObject(list2);
	            System.out.println(jsonArray1);*/

			} catch (Exception es) {
				es.printStackTrace();
			}



		} catch (Exception e) {
			e.printStackTrace();
		}finally {

		}
		return jo;
	}
	public static JSONObject loadNewsDetail(JSONObject params, ActionContext context) throws SQLException, NamingException,XPathExpressionException, HttpException, IOException {
		JSONObject jo = new JSONObject();
		
		String endpoint = "http://www.shhk.gov.cn/hkmobileservice/appservice.asmx";
		//Service service = new Service();
		//String wsUrl = "http://www.shhk.gov.cn/hkmobileservice/appservice.asmx"; 
		String usercode = "shhk";
		String userpwd = "gtig_newtech**##";
        String id = params.getString("imageID");
		String soap = "<?xml version=\"1.0\" encoding=\"utf-8\"?>"+
				"<soap:Envelope xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\">"+
				"<soap:Header>"+
				"<AuthHeader xmlns=\"http://tempuri.org/\">"+
				"<UserCode>"+usercode+"</UserCode>"+
				"<UserPwd>"+userpwd+"</UserPwd>"+
				"</AuthHeader>"+
				"</soap:Header>"+
				"<soap:Body>"+
				"<GetWebInfoDetail xmlns=\"http://tempuri.org/\">"+
				"<infoid>"+id+"</infoid>"+
				"</GetWebInfoDetail>"+
				"</soap:Body>"+
				"</soap:Envelope>";
		     //System.out.println(soap);
	      PostMethod postMethod = new PostMethod(endpoint);
	      
	      byte[] b = soap.getBytes("utf-8");
	      InputStream is = new ByteArrayInputStream(b, 0, b.length);
	      RequestEntity re = new InputStreamRequestEntity(is, b.length, "text/xml; charset=utf-8");
	      postMethod.setRequestEntity(re);
	      String soapRD = "";
		    org.apache.commons.httpclient.HttpClient httpClient = new org.apache.commons.httpclient.HttpClient();
		    int statusCodes = httpClient.executeMethod(postMethod);
		    if (statusCodes == 200) {
				//System.out.println("success");
		    	soapRD = postMethod.getResponseBodyAsString();
				soapRD = soapRD.replaceAll("&lt;", "<");	   
				soapRD = soapRD.replaceAll("&gt;", ">");
				soapRD = soapRD.replaceAll("&amp;nbsp;","");
			    soapRD = soapRD.replace("<?xml version=\"1.0\" encoding=\"utf-8\"?><soap:Envelope xmlns:soap=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"><soap:Body><GetWebInfoDetailResponse xmlns=\"http://tempuri.org/\"><GetWebInfoDetailResult>", "");			    	
				soapRD = soapRD.replace("</GetWebInfoDetailResult></GetWebInfoDetailResponse></soap:Body></soap:Envelope>","");  		
				try {   									

					DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
					DocumentBuilder builder = dbf.newDocumentBuilder();  
					Document document = builder.parse(new InputSource(new StringReader(soapRD)));
					NodeList list = document.getElementsByTagName("Row");
					
					for (int i = 0; i < list.getLength()-1; i++) {
						Element element = (Element) list.item(i);
						String infoContent = element.getElementsByTagName("infocontent").item(0).getFirstChild().getNodeValue();
                       //String fileContent = element.getElementsByTagName("img_filecontent").item(0).getFirstChild().getNodeValue();
                        jo.put("newsDetail", infoContent.replace("font-size: 12pt;", ""));
					}
					
		
					/*			
		            JSONArray jsonArray1 = JSONArray.fromObject(list2);
		            System.out.println(jsonArray1);*/
				}catch (Exception es) {
					es.printStackTrace();
				}
				
				} 
		return jo;
	}

}
