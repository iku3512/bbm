package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;


public class KoushiInsert extends HttpServlet {
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
      

      String sql = "insert into koushi_list (kname,kkana,ksex,khome,kschool,kage,ktype,"
      		+ "ktel,ktel2,kmail,knaiyo) values('" + (String)request.getAttribute("kname") 
      		+  "','" +  (String)request.getAttribute("kkana") + "','" +  (String)request.getAttribute("ksex")
      		+ "','" +  (String)request.getAttribute("khome")+ "','" +  (String)request.getAttribute("kschool")
      		+ "','" +  (String)request.getAttribute("kage")+ "','" +  (String)request.getAttribute("ktype")
      		+ "','" +  (String)request.getAttribute("ktel")+ "','" +  (String)request.getAttribute("ktel2")
      		+ "','" +  (String)request.getAttribute("kmail")
      		+ "','" +  (String)request.getAttribute("knaiyo") + "')";
      
      int num = stmt.executeUpdate(sql);

      sql = "select * from koushi_list";
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

    RequestDispatcher rd=request.getRequestDispatcher("/KoushiEnd.jsp");
	rd.forward(request,response);

}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}
}


