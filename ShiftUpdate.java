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

public class ShiftUpdate extends HttpServlet {

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
		      

		      //jspから値を受け取る
		      	String shiftID = request.getParameter("shiftID");
				String date = request.getParameter("date");
				String time1 = request.getParameter("time1");
				String time2 = request.getParameter("time2");
				String snaiyo = request.getParameter("snaiyo");
				String kname = request.getParameter("kname");
				String stype = request.getParameter("stype");
				String subject = request.getParameter("subject");

				
				String koushi="";
				if(kname=="田村太郎"){
					kname="田村太郎";
				}else if(kname=="2"){
					koushi="小林花子"	;
				}else if(kname=="3"){
					koushi="森次郎"	;
				}else if(kname=="4"){
					koushi="横山愛"	;
				}else if(kname=="5"){
					koushi="佐藤拓弥"	;
				}else if(kname=="6"){
					koushi="山田一郎"	;
				}
				
				
				
				String jugyo="";
				if(stype =="1"){
					stype="個別（中１）";
				}else if(stype =="2"){
					jugyo="個別（中２）";
				}else if(stype =="3"){
					jugyo="個別（中３）";
				}else if(stype =="4"){
					jugyo="集団（中１）";
				}else if(stype =="5"){
					stype="集団（中２）";
				}else if(stype =="6"){
					jugyo="集団（中３）";
				}else if(stype =="7"){
					jugyo="その他";
				}
					
				String sub="null";
				if(subject =="1"){
					sub="英語";
				}else if(subject =="2"){
					sub="国語";
				}else if(subject =="3"){
					sub="数学";
				}else if(subject =="4"){
						sub="社会";
				}else if(subject =="5"){
					sub="その他";}
				
				//jspに飛ばす用
				request.setAttribute("date", date);
				request.setAttribute("time1", time1);
				request.setAttribute("time2", time2);
				request.setAttribute("kname", kname);
				request.setAttribute("stype",stype);
				request.setAttribute("subject",subject);
				request.setAttribute("snaiyo",snaiyo);
		

		      String sql = "update Shift_list set date='" + date +"', time1='"+ time1 +"', time2='"+ time2 
		    		   +"', kname='"+ kname +"', stype='"+ stype +"', subject='"+ subject +"', snaiyo='"+ snaiyo
		    		   +"' where shiftID =" + shiftID;
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
			RequestDispatcher rd=request.getRequestDispatcher("/ShiftUpdateEnd.jsp");
			rd.forward(request,response);
		   
		  }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}	
}
