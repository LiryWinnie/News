package xml;

import java.io.File;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.io.SAXReader;

public class exchange {
	public void test(String title,String newid) throws Exception{  
		SAXReader reader =new SAXReader();
    	Document document;
    	try {
    		File file=new File("../social.xml");
    		if(file.exists()) {
    			document = reader.read(file);
    			Node node =document.selectSingleNode("/new");
    			Element newsElement=(Element)node;
    			newsElement.element("title").setText(title);
    		}
    	}catch(DocumentException e) {
    		e.printStackTrace();
    	}
    }  
}
