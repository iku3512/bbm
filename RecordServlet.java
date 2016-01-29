	package servlet;
	
	import java.io.IOException;

	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;



	public class RecordServlet  extends HttpServlet {
		private static final long serialVersionUID = 1L;
		
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException{
			
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=UTF-8");
			
		        
		        //jspから値を受け取る
				String sname =request.getParameter("sname") ;
				String semester = request.getParameter("semester");
				String kokugo = request.getParameter("kokugo");
				String syakai = request.getParameter("syakai");
				String sugaku = request.getParameter("sugaku");
				String rika = request.getParameter("rika");
				String ongaku = request.getParameter("ongaku");
				String bijutu = request.getParameter("bijutu");
				String taiku = request.getParameter("taiku");
				String gika = request.getParameter("gika");
				String eigo = request.getParameter("eigo");
				String age = request.getParameter("age");
		
				
				
				//jspに飛ばす用
				request.setAttribute("sname", sname);
				request.setAttribute("semester", semester);
				request.setAttribute("kokugo", kokugo);
				request.setAttribute("syakai", syakai);
				request.setAttribute("sugaku",sugaku);
				request.setAttribute("rika",rika);
				request.setAttribute("ongaku",ongaku);
				request.setAttribute("bijutu",bijutu);
				request.setAttribute("taiku",taiku);
				request.setAttribute("gika",gika);
				request.setAttribute("eigo",eigo);
				request.setAttribute("age",age);
		
		       		

				//画面遷移
				RequestDispatcher rd=request.getRequestDispatcher("/RecordInsert");
				rd.forward(request,response);

	}
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			doGet(request, response);
		}	
	}
		

