package servlet;
	
import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class SeitoServlet  extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
	        
	        //jspから値を受け取る
			String sname = request.getParameter("sname");
			String skana = request.getParameter("skana");
			String hname = request.getParameter("hname");
			String hkana = request.getParameter("hkana");
			String home = request.getParameter("home");
			String school = request.getParameter("school");
			String stel = request.getParameter("stel");
			String htel = request.getParameter("htel");
			String tel = request.getParameter("tel");
			String smail = request.getParameter("smail");
			String hmail = request.getParameter("hmail");
			String naiyo = request.getParameter("naiyo");
			int seX = Integer.parseInt(request.getParameter("sex"));
			int agE = Integer.parseInt(request.getParameter("age"));
			int typE = Integer.parseInt(request.getParameter("type"));
			
			
			String seibetu="null";
			if(seX==0){
				seibetu="男";
			}else{
				seibetu="女"	;
			}
			String gakunen="null";
			if(agE ==1){
				gakunen="小学４年";
			}else if(agE ==2){
				gakunen="小学５年";
			}else if(agE ==3){
				gakunen="小学６年";
			}else if(agE ==4){
				gakunen="中学１年";
			}else if(agE ==5){
				gakunen="中学２年";
			}else if(agE ==6){
				gakunen="中学３年";
			}else if(agE ==7){
				gakunen="高校生";
			}

			String jugyo="null";
			if(typE ==0){
				jugyo="集団";
			}else if(typE ==1){
				jugyo="個別";
			}
			
			//jspに飛ばす用
			request.setAttribute("sname", sname);
			request.setAttribute("skana", skana);
			request.setAttribute("sex",seibetu);
			request.setAttribute("hname",hname);
			request.setAttribute("hkana",hkana);
			request.setAttribute("home",home);
			request.setAttribute("school",school);
			request.setAttribute("age",gakunen);
			request.setAttribute("type",jugyo);
			request.setAttribute("stel", stel);
			request.setAttribute("htel", htel);
			request.setAttribute("tel", tel);
			request.setAttribute("smail",smail );
			request.setAttribute("hmail", hmail);
			request.setAttribute("naiyo", naiyo);
			
	       
			
			

			//画面遷移
			RequestDispatcher rd=request.getRequestDispatcher("/SeitoInsert");
			rd.forward(request,response);

}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}	
}
	
