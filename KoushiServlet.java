package servlet;
	
import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class KoushiServlet  extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
	        
	        //jspから値を受け取る
			String kname = request.getParameter("kname");
			String kkana = request.getParameter("kkana");
			String khome = request.getParameter("khome");
			String kschool = request.getParameter("kschool");
			String ktel = request.getParameter("ktel");
			String ktel2 = request.getParameter("ktel2");
			String kmail = request.getParameter("kmail");
			String knaiyo = request.getParameter("knaiyo");
			int kseX = Integer.parseInt(request.getParameter("ksex"));
			int kagE = Integer.parseInt(request.getParameter("kage"));
			int ktypE = Integer.parseInt(request.getParameter("ktype"));
			
			
			String seibetu="null";
			if(kseX==0){
				seibetu="男";
			}else{
				seibetu="女"	;
			}
			String gakunen="null";
			if(kagE ==1){
				gakunen="大学１年";
			}else if(kagE ==2){
				gakunen="大学２年";
			}else if(kagE ==3){
				gakunen="大学３年";
			}else if(kagE ==4){
				gakunen="大学４年";
			}else if(kagE ==5){
				gakunen="院生";
			}

			String jugyo="null";
			if(ktypE ==0){
				jugyo="集団";
			}else if(ktypE ==1){
				jugyo="個別";
			}
			
			//jspに飛ばす用
			request.setAttribute("kname", kname);
			request.setAttribute("kkana", kkana);
			request.setAttribute("ksex",seibetu);
			request.setAttribute("khome",khome);
			request.setAttribute("kschool",kschool);
			request.setAttribute("kage",gakunen);
			request.setAttribute("ktype",jugyo);
			request.setAttribute("ktel", ktel);
			request.setAttribute("ktel2", ktel);
			request.setAttribute("kmail",kmail );
			request.setAttribute("knaiyo", knaiyo);
			
	       
			
			

			//画面遷移
			RequestDispatcher rd=request.getRequestDispatcher("/KoushiInsert");
			rd.forward(request,response);

}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}	
}
	

