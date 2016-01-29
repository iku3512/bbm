package servlet;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;

import model.Seito;

public class GoWork extends HttpServlet {

	private ServletRequest request;
	public void doPost(	HttpServletRequest request, 
				HttpServletResponse response)
				throws IOException, ServletException
	{
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = response.getWriter();

		
		

		 Connection conn = null;
		    String url = "jdbc:mysql://localhost:3306/BBM?useUnicode=true&characterEncoding=utf8";
		    String user = "root";
		    String password = "";
		    
		    try {
		      Class.forName("com.mysql.jdbc.Driver").newInstance();
		      conn = DriverManager.getConnection(url, user, password);

		      Statement stmt = conn.createStatement();
		      

				// 値の取得＆設定
		     String shiftID = request.getParameter("shiftID");
		     String kname = request.getParameter("kname");
		
			 
			 
			 request.setAttribute("shiftID", shiftID);
			 request.setAttribute("kname", kname);
			


		      String sql = "update Shift_list set go='出勤' where shiftID =" + shiftID;
		      int num = stmt.executeUpdate(sql);

		      ResultSet rs = stmt.executeQuery(sql);

		      while(rs.next()){
		       
		      }

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
		    
		  //画面遷移
			RequestDispatcher rd=request.getRequestDispatcher("/SetPrice2");
			rd.forward(request,response);
		   
		  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}	
}

