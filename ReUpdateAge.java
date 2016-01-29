package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ReUpdateAge extends HttpServlet {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException{

	response.setContentType("text/html; charset=Shift_JIS");
    PrintWriter out = response.getWriter();
 
    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/BBM?useUnicode=true&characterEncoding=utf8";
    String user = "root";
    String password = "";
    
    try {
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      conn = DriverManager.getConnection(url, user, password);

      Statement stmt = conn.createStatement();
      
      
      String sql = "update seito_list " 
+ "SET age = (CASE WHEN age = '小学６年' THEN '小学５年' WHEN age = '小学４年' THEN '小学４年'"
+" WHEN age = '小学５年' THEN '小学４年' WHEN age = '中学１年' THEN '小学６年'"
+" WHEN age = '中学２年' THEN '中学１年' WHEN age = '中学３年' THEN '中学２年'"
+" WHEN age = '退塾' THEN '中学３年' WHEN age = '高校生' THEN '高校生' end)";
      
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
    RequestDispatcher rd=request.getRequestDispatcher("/UpdateAgeEnd.jsp");
	rd.forward(request,response);

}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}
}

