package xml;

import java.io.File;
import java.util.List;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;


public class num {
	public int text(String type) throws DocumentException
	{
		int a=0;
        SAXReader reader = new SAXReader();
        Document document = reader.read(new File("E:/xml/"+type+".xml"));
        Element root = document.getRootElement();
        //输出根标签的名字
      //获取根节点下面的所有子节点（不包过子节点的子节点）
        List<Element> list = root.elements() ;
        //遍历List的方法
        for (Element e:list){
            a++;
        }
        return a;
   }  
 }