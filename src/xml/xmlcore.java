package xml;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class xmlcore {
    public static String path = "E:/xml/";
    public static void createXML(String typename) {
    	Document document = DocumentHelper.createDocument();
    	document.addElement("news");
    	File file=new File(path+typename+".xml");
    	writeXML(document,file);
    }
    private static int writeXML(Document document,File file) {
    	int value=0;
    	OutputFormat format=OutputFormat.createPrettyPrint();
    	format.setEncoding("UTF-8");
    	XMLWriter writer=null;
    	try {
    		writer =new XMLWriter(new FileOutputStream(file),format.createPrettyPrint());
    		writer.write(document);
    		value=1;
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return value;
    }
    public static int addNews(String typename,String newid,String reid,String reporter,
    		String edid,String editor,String Zedid,String Zeditor,String newtitle,
    		String content,String []image,String comment) {
    	int value=0;
    	File file =new File(path+typename+".xml");
    	if(!file.exists()) {
    		createXML(typename);
    		file = new File(path+typename+".xml");
    	}
    	Document document=null;
    	try {
    		SAXReader reader=new SAXReader();
    		document = reader.read(file);
    		Element rootElement = document.getRootElement();
    		Element newElement = rootElement.addElement("new");
    		newElement.addAttribute("newid", newid);
    	
    		Element titleElement = newElement.addElement("title");
    		titleElement.setText(newtitle);
    		
    		Element reporterElement = newElement.addElement("reporter");
    		reporterElement.addAttribute("reportername",reporter);
    		reporterElement.setText(reid);
    		Element editorElement=newElement.addElement("editor");
    		editorElement.addAttribute("editorname", editor);
    		editorElement.setText(edid);
    		
    		Element ZeditorElement = newElement.addElement("Zeditor");
    		ZeditorElement.addAttribute("Zeditorname", Zeditor);
    		ZeditorElement.setText(Zedid);
    		
    		Calendar cal=Calendar.getInstance();
    		Element createtimeElement= newElement.addElement("createtime");
    		String year=String.valueOf(cal.get(Calendar.YEAR));
    		int mo =cal.get(Calendar.MONTH)+1;
    		int da =cal.get(Calendar.DAY_OF_MONTH);
    		int ho =cal.get(Calendar.HOUR_OF_DAY);
    		int mi =cal.get(Calendar.MINUTE);
    		int se =cal.get(Calendar.SECOND);
    		String month =null;
    		String day=null;
    		String hour=null;
    		String minute=null;
    		String second=null;
    		if(mo<=9) {
    			month="0"+String.valueOf(mo);
    		}else {
    			month=String.valueOf(mo);
    		}
    		if(da<=9) {
    			day="0"+String.valueOf(da);
    		}else {
    			day=String.valueOf(da);
    		}
    		if(ho<=9) {
    			hour="0"+String.valueOf(ho);
    		}else {
    			hour=String.valueOf(ho);
    		}
    		if(mi<=9) {
    			minute="0"+String.valueOf(mi);
    		}else {
    			minute=String.valueOf(mi);
    		}
    		if(se<=9) {
    			second="0"+String.valueOf(se);
    		}else {
    			second=String.valueOf(se);
    		}
    		String createtime=year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
    		createtimeElement.setText(createtime);
    		Element statusElement =newElement.addElement("status");
    		statusElement.setText("3");
    		
    		Element contentElement =newElement.addElement("content");
    		contentElement.addCDATA(content);
    		
    		Element imagesetElement =newElement.addElement("imageset");
    		for(int i=0;i<image.length;i++) {
    			Element im=imagesetElement.addElement("image");
    			im.setText(image[i]);
    		}
    		Element commentElement=newElement.addElement("comment");
    		commentElement.setText(comment);
    		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	value=writeXML(document,file);
    	return value;
    }
    //删除新闻
    public static void deletenews(String typename,String newid) {
    	SAXReader reader =new SAXReader();
    	Document document;
    	try {
    		File file=new File(path+typename+".xml");
    		if(file.exists()) {
    			document =reader.read(file);
    			Node node=document.selectSingleNode("/news/new[@newid='"+newid+"']");
    			Element newElement=(Element)node;
    			newElement.getParent().remove(newElement);
    			writeXML(document, file);
    		}
    	}catch(DocumentException e){
    		e.printStackTrace();
    	}
    }
    //更新新闻
    public static int updateNews(NewsBean n) {
    	int value=0;
    	SAXReader reader =new SAXReader();
    	Document document;
    	try {
    		File file=new File(path+n.getType()+".xml");
    		if(file.exists()) {
    			document =reader.read(file);
    			Node node=document.selectSingleNode("/news/new[@newid='"+n.getNewid()+"']");
    			Element newElement=(Element)node;
    			newElement.element("title").setText(n.getTitle());
    			Element contentElement=newElement.element("content");
    			contentElement.remove(contentElement.node(0));
    			contentElement.addCDATA(n.getContent());
    			value=writeXML(document, file);
    		}
    	}catch(DocumentException e){
    		e.printStackTrace();
    	}
    	return value;
    }
    //根据对应新闻的类型和新闻的ID返回对应的新闻
    public static NewsBean getNewsById(String typename,String newid) {
    	NewsBean news =new NewsBean();
    	SAXReader reader=new SAXReader();
    	Document document=null;
    	String image[]=null;
    	try {
    		File file=new File(path+typename+".xml");
    		if(file.exists()) {
    			document =reader.read(file);
    			Node node=document.selectSingleNode("/news/new[@newid='"+newid+"']");
    			Element newsElement =(Element)node;
    			news=new NewsBean();
    			news.setNewid(newsElement.attribute("newid").getValue());
    			news.setTitle(newsElement.elementText("title"));
    			news.setReid(newsElement.elementText("reporter"));
    			news.setReporter(newsElement.element("reporter").attribute("reportername").getValue());
    			news.setEdid(newsElement.elementText("editor"));
    			news.setEditor(newsElement.element("editor").attribute("editorname").getValue());
    			news.setZedid(newsElement.elementText("Zeditor"));
    			news.setZeditor(newsElement.element("Zeditor").attribute("Zeditorname").getValue());
    			news.setCreatetime(newsElement.elementText("createtime"));
    			news.setContent(newsElement.elementText("content"));
    			news.setStatus(newsElement.elementText("status"));
    			news.setComment(newsElement.elementText("comment"));
    			news.setZcomment(newsElement.elementText("zcomment"));
    			Element imagesetElement=newsElement.element("imageset");
    			List images=imagesetElement.elements("image");
    			image=new String[images.size()];
    			for(int j=0;j<images.size();j++) {
    				Element imageElement=(Element)images.get(j);
    				image[j]=imageElement.getText();
    			}
    			news.setImage(image);
    			news.setType(typename);
    		}
    	}catch(DocumentException e) {
    		e.printStackTrace();
    	}
    	return news;
    }
    public static void comment(NewsBean n) {
    	SAXReader reader =new SAXReader();
    	Document document;
    	try {
    		File file=new File(path+n.getType()+".xml");
    		if(file.exists()) {
    			document =reader.read(file);
    			Node node=document.selectSingleNode("/news/new[@newid='"+n.getNewid()+"']");
    			Element newElement=(Element)node;
    			newElement.element("status").setText(n.getStatus());
    			newElement.element("editor").addAttribute("editorname", n.getEditor());
    	    	newElement.element("editor").setText(n.getEdid());
    			
    			if(newElement.element("comment")==null) {
    			Element commentElement=newElement.addElement("comment");
        		commentElement.setText(n.getComment());
        		}
    			else {
    				newElement.element("comment").setText(n.getComment());
    			}
    			writeXML(document, file);
    		}
    	}catch(DocumentException e){
    		e.printStackTrace();
    	}
    }
    public static void Zcomment(NewsBean n) {
    	SAXReader reader =new SAXReader();
    	Document document;
    	try {
    		File file=new File(path+n.getType()+".xml");
    		if(file.exists()) {
    			document =reader.read(file);
    			Node node=document.selectSingleNode("/news/new[@newid='"+n.getNewid()+"']");
    			Element newElement=(Element)node;
    			newElement.element("status").setText(n.getStatus());
    			newElement.element("Zeditor").addAttribute("Zeditorname", n.getZeditor());
    	    	newElement.element("Zeditor").setText(n.getZedid());
    		
    			if(newElement.element("zcomment")==null) {
    			Element commentElement=newElement.addElement("zcomment");
        		commentElement.setText(n.getComment());
        		}
    			else {
    				newElement.element("zcomment").setText(n.getComment());
    			}
    			writeXML(document, file);
    		}
    	}catch(DocumentException e){
    		e.printStackTrace();
    	}
    }
    public static void setStatus(NewsBean n) {
    	SAXReader reader =new SAXReader();
    	Document document;
    	try {
    		File file=new File(path+n.getType()+".xml");
    		if(file.exists()) {
    			document =reader.read(file);
    			Node node=document.selectSingleNode("/news/new[@newid='"+n.getNewid()+"']");
    			Element newElement=(Element)node;
    			newElement.element("status").setText("3");
    			writeXML(document, file);
    		}
    		 
		}catch(DocumentException e){
		e.printStackTrace();
	   }
    }
}
