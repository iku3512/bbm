package servlet;
	
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ShiftServlet  extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
	        
	        //jspから値を受け取る
			String smonth =request.getParameter("smonth") ;
			String date = request.getParameter("date");
			String time1 = request.getParameter("time1");
			String time2 = request.getParameter("time2");
			String snaiyo = request.getParameter("snaiyo");
			int Kname = Integer.parseInt(request.getParameter("kname"));
			int Stype = Integer.parseInt(request.getParameter("stype"));
			int Subject = Integer.parseInt(request.getParameter("subject"));
			
			
			String koushi="null";
			if(Kname==1){
				koushi="田村太郎";
			}else if(Kname==2){
				koushi="小林花子"	;
			}else if(Kname==3){
				koushi="森次郎"	;
			}else if(Kname==4){
				koushi="横山愛"	;
			}else if(Kname==5){
				koushi="佐藤拓弥"	;
			}else if(Kname==6){
				koushi="山田一郎"	;
			}
			
			
			
			String jugyo="null";
			if(Stype ==1){
				jugyo="個別（中１）";
			}else if(Stype ==2){
				jugyo="個別（中２）";
			}else if(Stype ==3){
				jugyo="個別（中３）";
			}else if(Stype ==4){
				jugyo="集団（中１）";
			}else if(Stype ==5){
				jugyo="集団（中２）";
			}else if(Stype ==6){
				jugyo="集団（中３）";
			}else if(Stype ==7){
				jugyo="その他";
			}
				
			String sub="null";
			if(Subject ==1){
				sub="英語";
			}else if(Subject ==2){
				sub="国語";
			}else if(Subject ==3){
				sub="数学";
			}else if(Subject ==4){
					sub="社会";
			}else if(Subject ==5){
				sub="その他";}
			
			//jspに飛ばす用
			request.setAttribute("date", date);
			request.setAttribute("time1", time1);
			request.setAttribute("time2", time2);
			request.setAttribute("kname", koushi);
			request.setAttribute("stype",jugyo);
			request.setAttribute("subject",sub);
			request.setAttribute("snaiyo",snaiyo);
			request.setAttribute("smonth",smonth);
	
	       		

			//画面遷移
			RequestDispatcher rd=request.getRequestDispatcher("/ShiftInsert");
			rd.forward(request,response);

}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}	
}
	
