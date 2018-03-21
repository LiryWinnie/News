package xml;


import java.io.Serializable;

import org.dom4j.Element;

public class NewsBean implements Serializable{
	String newid;
	String typename;
	String reid;
	String reporter;
	String edid;
	String editor;
	String Zedid;
	String Zeditor;
	String title;
	String content;
	String []image;
	String comment;
	String zcomment;
	String status;
	String createtime;
	public Element newElement;
	public void setNewid(String newid) {
		this.newid=newid;
	} 
	public String getNewid() {
		return newid;
	}
	public void setTitle(String title) {
		this.title=title;
	}
	public String getTitle() {
		return title;
	}
    public void setReid(String reid) {
    	this.reid=reid;
	}
    public String getReid() {
		return reid;
	}
    public void setReporter(String reporter) {
    	this.reporter=reporter;
    }
    public String getReporter() {
		return reporter;
	}
    public void setEdid(String edid) {
    	this.edid=edid;
    }
    public String getEdid() {
		return edid;
	}
    public void setEditor(String editor) {
    	this.editor=editor;
    }
    public String getEditor() {
		return editor;
	}
    public void setZedid(String Zedid) {
	    this.Zedid=Zedid;
    }
    public String getZedid() {
		return Zedid;
	}
    public void setZeditor(String Zeditor) {
	    this.Zeditor=Zeditor;
    }
    public String getZeditor() {
		return Zeditor;
	}
    public void setCreatetime(String createtime) {
    	this.createtime=createtime;
    }
    public String getCreatetime() {
		return createtime;
	}
    public void setContent(String content) {
    	this.content=content;
    }
    public String getContent() {
		return content;
	}
    public void setStatus(String status) {
    	this.status=status;
    }
    public String getStatus() {
		return status;
	}
    public void setComment(String comment) {
    	this.comment=comment;
    }
    public String getComment() {
		return comment;
	}
    public String getZcomment() {
		return zcomment;
	}
	public void setZcomment(String zcomment) {
		this.zcomment = zcomment;
	}
    public void setImage(String[] image) {
    	this.image=image;
    }
    
    public void setType( String typename) {
    	this.typename=typename;
    }
    public String getType() {
		return typename;
	}
}
