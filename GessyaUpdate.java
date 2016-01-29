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

public class GessyaUpdate extends HttpServlet {

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
		     String seitoID = request.getParameter("seitoID");
		     
		     String gprice = request.getParameter("gprice");
			 String gdate = request.getParameter("gdate");
			 String gmonth = request.getParameter("gmonth");
			 String gstatus = request.getParameter("gstatus");
			 String gnaiyo = request.getParameter("gnaiyo");


			 
			 String gessya="null";
				
			 if(gmonth =="1"){
				gessya="１月";
			}else if(gmonth =="2"){
				gessya="２月";
			}else if(gmonth =="3"){
				gessya="３月";
			}else if(gmonth =="4"){
				gessya="４月";
			}else if(gmonth =="5"){
				gessya="５月";
			}else if(gmonth =="6"){
				gessya="６月";
			}else if(gmonth =="7"){
				gessya="７月";}
		    else if(gmonth =="8"){
				gessya="８月";
			}else if(gmonth =="9"){
				gessya="９月";
			}else if(gmonth =="10"){
				gessya="１０月";
			}else if(gmonth =="11"){
				gessya="１１月";}
			else if(gmonth =="11"){
				gessya="１２月";}
			 
			 
			 
			 request.setAttribute("gprice", gprice);
			 request.setAttribute("gdate", gdate);
			 request.setAttribute("gmonth", gessya);
			 request.setAttribute("gstatus", gstatus);
			 request.setAttribute("gnaiyo", gnaiyo);


		      String sql = "update seito_list set gprice='" + gprice +"', gdate='"+ gdate +"', gstatus='"+ gstatus 
		    		   +"', gnaiyo='"+ gnaiyo +"', gmonth='"+ gmonth +"' where seitoID =" + seitoID;
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
			RequestDispatcher rd=request.getRequestDispatcher("/GessyaUpdateEnd.jsp");
			rd.forward(request,response);
		   
		  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}	
}
