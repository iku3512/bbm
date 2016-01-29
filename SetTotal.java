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

public class SetTotal extends HttpServlet {

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
		      

		


		      String sql ="UPDATE record_list set total1 = "
+"case when age='中学１年' and semester='１学期'"
+" then kokugo + syakai + sugaku + rika + ongaku + bijutu + taiku + gika + eigo end,"
+" total2 = case when age='中学１年' and semester='学年末'"
+" then kokugo + syakai + sugaku + rika + ongaku + bijutu + taiku + gika + eigo end,"
+" total3 = case when age='中学２年' and semester='１学期'"
+" then kokugo + syakai + sugaku + rika + ongaku + bijutu + taiku + gika + eigo end,"
+" total4 = case when age='中学２年' and semester='学年末'"
+" then kokugo + syakai + sugaku + rika + ongaku + bijutu + taiku + gika + eigo end,"
+" total5 = case when age='中学３年' and semester='１学期'"
+" then kokugo + syakai + sugaku + rika + ongaku + bijutu + taiku + gika + eigo end,"
+" total6 = case when age='中学３年' and semester='学年末'"
+" then kokugo + syakai + sugaku + rika + ongaku + bijutu + taiku + gika + eigo end";
	
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
			RequestDispatcher rd=request.getRequestDispatcher("/RecordInsertEnd.jsp");
			rd.forward(request,response);
		   
		  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}	
}


