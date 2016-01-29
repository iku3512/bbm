package servlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Koushi;


public class RecordInsert extends HttpServlet {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException{

	response.setContentType("text/html; charset=UTF-8");
    PrintWriter out = response.getWriter();


    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/BBM?useUnicode=true&characterEncoding=utf8";
    String user = "root";
    String password = "";
    
    try {
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      conn = DriverManager.getConnection(url, user, password);

      Statement stmt = conn.createStatement();

      String sql = "insert into record_list (sname,semester,kokugo,syakai,sugaku,rika,ongaku,bijutu,taiku,gika,eigo,age,total1,total2,total3,total4,total5,total6) "
      		+ "values('" + (String)request.getAttribute("sname") +  "','" + (String)request.getAttribute("semester")
      		+  "','" + (String)request.getAttribute("kokugo")+  "','" + (String)request.getAttribute("syakai")
      		+  "','" + (String)request.getAttribute("sugaku")+  "','" + (String)request.getAttribute("rika")
      		+  "','" + (String)request.getAttribute("ongaku")+  "','" + (String)request.getAttribute("bijutu")
      		+  "','" + (String)request.getAttribute("taiku")+  "','" + (String)request.getAttribute("gika")
      		+  "','" + (String)request.getAttribute("eigo")+"','"+ (String)request.getAttribute("age") +"','あ','0','0','0','0','0')";
      
      int num = stmt.executeUpdate(sql);

   
      ResultSet rs = stmt.executeQuery(sql);
      

   
      rs.close();
      stmt.close();
    }catch (ClassNotFoundException e){
      out.println("ClassNotFoundException:" + e.getMessage());
    }catch (SQLException e){
      out.println("SQLException:" + e.getMessage());
    }catch (Exception e){
      out.println("Exception:" + e.getMessage());
    }finally{
      try{
        if (conn != null){
          conn.close();
        }
      }catch (SQLException e){
        out.println("SQLException:" + e.getMessage());
      }
    }

    RequestDispatcher rd=request.getRequestDispatcher("/SetTotal");
	rd.forward(request,response);

}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}
}


