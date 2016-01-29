package servlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Koushi;


public class ShiftInsert extends HttpServlet {
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

      String sql = "insert into Shift_list (date,time1,time2,kname,stype,subject,snaiyo,smonth,price,go) "
      		+ "values('" + (String)request.getAttribute("date") +  "','" + (String)request.getAttribute("time1")
      		+  "','" + (String)request.getAttribute("time2")+  "','" + (String)request.getAttribute("kname")
      		+  "','" + (String)request.getAttribute("stype")+  "','" + (String)request.getAttribute("subject")
      		+  "','" + (String)request.getAttribute("snaiyo")+  "','" + (String)request.getAttribute("smonth")
      		+  "',' 0 ','　')";
      
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

    RequestDispatcher rd=request.getRequestDispatcher("/SetPrice");
	rd.forward(request,response);

}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}
}

