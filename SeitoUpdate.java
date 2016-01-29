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

public class SeitoUpdate extends HttpServlet {

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
			 String sname = request.getParameter("sname");
			 String skana = request.getParameter("skana");
			 String sex = request.getParameter("sex");
			 String hname = request.getParameter("hname");
			 String hkana = request.getParameter("hkana");
			 String school = request.getParameter("school");
			 String home = request.getParameter("home");
			 String age = request.getParameter("age");
			 String type = request.getParameter("type");
			 String htel = request.getParameter("htel");
			 String stel = request.getParameter("stel");
			 String tel = request.getParameter("tel");
			 String hmail = request.getParameter("hmail");
			 String smail = request.getParameter("smail");
			 String naiyo = request.getParameter("naiyo");
									 
			 String seibetu="null";
				if(sex=="0"){
					seibetu="男";
				}else if(sex=="1"){
					seibetu="女"	;
				}
				
				String gakunen="null";
				
				
				
				 if(age =="1"){
					gakunen="小学４年";
				}else if(age =="2"){
					gakunen="小学５年";
				}else if(age =="3"){
					gakunen="小学６年";
				}else if(age =="4"){
					gakunen="中学１年";
				}else if(age =="5"){
					gakunen="中学２年";
				}else if(age =="6"){
					gakunen="中学３年";
				}else if(age =="7"){
					gakunen="高校生";}
				

				String jugyo="null";
				if(type =="1"){
					jugyo="集団";
				}else if(type =="2"){
					jugyo="個別";
				}
			 
			 
			 request.setAttribute("sname", sname);
			 request.setAttribute("skana", skana);
			 request.setAttribute("sex", seibetu);
			 request.setAttribute("hname", hname);
			 request.setAttribute("hkana", hkana);
			 request.setAttribute("school", school);
			 request.setAttribute("home", home);
			 request.setAttribute("htel", htel);
			 request.setAttribute("age", age);
			 request.setAttribute("type", jugyo);
			 request.setAttribute("htel", htel);
			 request.setAttribute("stel", stel);
			 request.setAttribute("tel", tel);
			 request.setAttribute("smail", smail);
			 request.setAttribute("hmail", hmail);
			 request.setAttribute("naiyo", naiyo);
			
			


		      String sql = "update seito_list set sname='" + sname +"', skana='"+ skana +"', sex='"+ sex 
		    		   +"', hname='"+ hname +"', hkana='"+ hkana +"', home='"+ home +"', school='"+ school+"', age='"
		    		  + age +"', type='"+ type +"', htel='"+ htel +"', stel='"+ stel +"', tel='"+ tel 
		    		  +"', smail='"+ smail +"', hmail='"+ hmail +"', naiyo='"+ naiyo +"' where seitoID =" + seitoID;
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
			RequestDispatcher rd=request.getRequestDispatcher("/SeitoUpdateEnd.jsp");
			rd.forward(request,response);
		   
		  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}	
}
