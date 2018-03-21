package news;
import java.sql.*;

public class mysql {

	public static void main(String[] args){
        try{
            //调用Class.forName()方法加载驱动程序
            Class.forName("com.mysql.jdbc.Driver");              
            String url="jdbc:mysql://localhost:3306/news?characterEncoding=utf-8";    //JDBC的URL    
            Connection conn;
            conn = DriverManager.getConnection(url,"root","pwy4225054");
            Statement stmt = conn.createStatement(); //创建Statement对象
            String sql = "select * from employee where name='Tom'";    //要执行的SQL          
            ResultSet rs = stmt.executeQuery(sql);//创建数据对象             
                while (rs.next()){
                	if(rs.getString(1).equalsIgnoreCase("Tom"))
                        System.out.print(rs.getString(1));
                }
                rs.close();
                stmt.close();
                conn.close();
            }catch(Exception e)
            {
                e.printStackTrace();
            }
    }
}
