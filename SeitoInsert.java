package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;


public class SeitoInsert extends HttpServlet {
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
      

      String sql = "insert into seito_list (sname,skana,sex,hname,hkana,home,school,age,type,"
      		+ "stel,htel,tel,smail,hmail,naiyo,gprice,gdate,gmonth,gstatus,gnaiyo) values('" + (String)request.getAttribute("sname") 
      		+  "','" +  (String)request.getAttribute("skana") + "','" +  (String)request.getAttribute("sex")
      		+ "','" + (String)request.getAttribute("hname") + "','" +  (String)request.getAttribute("hkana")
      		+ "','" +  (String)request.getAttribute("home")+ "','" +  (String)request.getAttribute("school")
      		+ "','" +  (String)request.getAttribute("age")+ "','" +  (String)request.getAttribute("type")
      		+ "','" +  (String)request.getAttribute("stel")+ "','" +  (String)request.getAttribute("htel")
      		+ "','" +  (String)request.getAttribute("tel")+ "','" +  (String)request.getAttribute("smail")+ "','" +  (String)request.getAttribute("hmail")
      		+ "','" +  (String)request.getAttribute("naiyo") + "','','','２月分','未','')";
      
      int num = stmt.executeUpdate(sql);

      sql = "select * from seito_list";
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

    RequestDispatcher rd=request.getRequestDispatcher("/SeitoEnd.jsp");
	rd.forward(request,response);

}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}
}

