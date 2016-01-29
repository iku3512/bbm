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

import model.Koushi;

public class KoushiUpdate extends HttpServlet {

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
		     String koushiID = request.getParameter("koushiID");
			 String kname = request.getParameter("kname");
			 String kkana = request.getParameter("kkana");
			 String ksex = request.getParameter("ksex");
			 String kschool = request.getParameter("kschool");
			 String khome = request.getParameter("khome");
			 String kage = request.getParameter("kage");
			 String ktype = request.getParameter("ktype");
			 String ktel = request.getParameter("ktel");
			 String ktel2 = request.getParameter("ktel2");
			 String kmail = request.getParameter("kmail");
			 String knaiyo = request.getParameter("knaiyo");
									 
			 String seibetu="null";
				if(ksex=="0"){
					seibetu="男";
				}else if(ksex=="1"){
					seibetu="女"	;
				}
				
				String gakunen="null";
				
				
				
				 if(kage =="1"){
					gakunen="大学１年";
				}else if(kage =="2"){
					gakunen="大学２年";
				}else if(kage =="3"){
					gakunen="大学３年";
				}else if(kage =="4"){
					gakunen="大学４年";
				}else if(kage =="5"){
					gakunen="院生";
				}
				

				String jugyo="null";
				if(ktype =="0"){
					jugyo="集団";
				}else if(ktype =="1"){
					jugyo="個別";
				}
			 
			 
			 request.setAttribute("kname", kname);
			 request.setAttribute("kkana", kkana);
			 request.setAttribute("ksex", seibetu);
			 request.setAttribute("kschool", kschool);
			 request.setAttribute("khome", khome);
			 request.setAttribute("ktel", ktel);
			 request.setAttribute("kage", kage);
			 request.setAttribute("ktype", jugyo);
			 request.setAttribute("ktel2", ktel2);
			 request.setAttribute("kmail", kmail);
			 request.setAttribute("knaiyo", knaiyo);
			
			


		      String sql = "update koushi_list set kname='" + kname +"', kkana='"+ kkana +"', ksex='"+ ksex 
		    		  +"', khome='"+ khome +"', kschool='"+ kschool+"', kage='"
		    		  + kage +"', ktype='"+ ktype +"', ktel='"+ ktel +"', ktel2='"+ ktel2
		    		  +"', kmail='"+ kmail +"', knaiyo='"+ knaiyo +"' where koushiID =" + koushiID;
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
			RequestDispatcher rd=request.getRequestDispatcher("/KoushiUpdateEnd.jsp");
			rd.forward(request,response);
		   
		  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}	
}

