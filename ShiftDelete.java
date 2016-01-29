package servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class ShiftDelete extends HttpServlet {
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
      
      String shiftID = request.getParameter("shiftID");

      
      String sql = "delete from Shift_list where shiftID =" + shiftID;
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
    RequestDispatcher rd=request.getRequestDispatcher("/ShiftDeleteEnd.jsp");
	rd.forward(request,response);

}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}
}





