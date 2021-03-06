package servlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import model.Koushi;


public class SetPrice2 extends HttpServlet {
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

      String sql = "update shift_list SET price ="
    		  + " case stype WHEN '個別（中２）' THEN '2000'"
    		  + " WHEN '個別（中１）' THEN '2000' WHEN '個別（中３）' THEN '2000'"
    		  + " WHEN '集団（中１）' THEN '2000' WHEN '集団（中２）' THEN '2000'"
    		  + " WHEN '集団（中３）' THEN '2000' WHEN 'その他' THEN '1000' END"
    		  +" where go='出勤'";
      
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

    RequestDispatcher rd=request.getRequestDispatcher("/GoWork.jsp");
	rd.forward(request,response);

}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}
}



