<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="windows-31j" import="java.sql.*,java.text.*" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j">
<title>給料明細</title>
 <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="plugins/morris/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
  </head>
  <body class="hold-transition skin-green sidebar-mini">
    <div class="wrapper">

    <header class="main-header">
     <!-- Logo -->
        <a href="/BBM/index.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-lg"><b>BroadBridge</b>Manager</span>
        </a>
           <!-- トップメニュー -->
            <nav class="navbar navbar-static-top" role="navigation">

                <!-- メニュー項目 -->
                <!-- 小さくなった時に消す -->
                <div class="collapse navbar-collapse" id="navbar-collapse">

                    <!-- サイドバー制御 -->
                    <a href="" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <ul class="nav navbar-nav">
                        <li><a href="/BBM/WorkTimeList.jsp">出退勤登録</a></li>
                        <li class="active"><a href="/BBM/Details.jsp">明細照会</a></li>
                          </ul>
                          
                    <!-- 右に寄せるメニュ :navbar-rightとかもあるが、マージが無い -->
                     <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                        	<li><a href="/BBM/index.html"><i class="fa fa-home"></i>ホーム</a></li>
                            <li><a href="/BBM/login.html"><i class="fa fa-sign-out"></i>ログアウト</a></li>
                        </ul>
                    </div>

                </div>
            </nav>
        </header><!-- end header -->

        <!-- サイドバー -->
        <aside class="main-sidebar">

            <section class="sidebar">

                <ul class="sidebar-menu">

                    <!-- メニューヘッダ -->
                    <li class="header">機能一覧</li>

                    <!-- メニュー項目 -->
                   
                    <li class="treeview">
                        <a href="/BBM/Shift.jsp"><i class="fa fa-calendar"></i>シフト作成<i class="fa fa-angle-left pull-right"></i></a>
                        
                        <li class="treeview">
                         <a href="/BBM/WorkTime.jsp"><i class="fa fa-clock-o"></i>出退勤登録<i class="fa fa-angle-left pull-right"></i></a>
                       
                        <li class="treeview">
                        <a href=""><i class="fa fa-user"></i>生徒管理<i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="/BBM/Seito.jsp">新規登録</a></li>
                            <li><a href="/BBM/SeitoList.jsp">生徒一覧</a></li>
                            <li><a href="/BBM/Gessya.jsp">月謝支払状況</a></li>
                            <li><a href="/BBM/Record.jsp">成績登録</a></li>
                            <li><a href="/BBM/EndAge.jsp">学年末処理</a></li>
                        </ul>
                        <li class="treeview">
                         <a href=""><i class="fa fa-briefcase"></i>講師管理<i class="fa fa-angle-left pull-right"></i></a>
                        <ul class="treeview-menu">
                            <li><a href="/BBM/Koushi.jsp">新規登録</a></li>
                            <li><a href="/BBM/KoushiList.jsp">講師一覧</a></li>
                        </ul>
                    </li>
                    
                </ul>
                

            </section>

        </aside>

        <!-- content -->
        <div class="content-wrapper">

            <!-- コンテンツヘッダ -->
            <section class="content-header">
                
                <!-- パンくず -->
                <ol class="breadcrumb">
                     <li><a href="">出退勤登録</a></li>
                    <li>明細照会</li>
                    <li>給料明細</li>
                </ol>
            </section>

            <!-- メインコンテンツ -->
            <section class="content">
            <p>　　<a type="button" class="btn btn-default btn-sm" href="/BBM/Details.jsp"><b>戻る</b></a></p>

                <!-- コンテンツ1 -->

      <!-- =============================================== -->
      
    
            
  			 <% 
      String url = "jdbc:mysql://localhost:3306/BBM?useUnicode=true&characterEncoding=utf8";
      String user = "root";
      String password = "";
      Connection conn = null;
      
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      conn = DriverManager.getConnection(url, user, password);
	  conn.setReadOnly(true);
	  Statement objSql=conn.createStatement();
	  
	  String koushiID = request.getParameter("koushiID");
	  ResultSet rs=objSql.executeQuery("SELECT * FROM koushi_list where koushiID =" + koushiID );
	  
	  while(rs.next()){
		  
		  
		%>  
		
					




                    <!-- col -->
                    <div class="col-xs-9">
                        <div class="box box-success">
                            
                            <div class="box-body">
                            <br><br><br>
                                <div class="table-responsive">
                                <table class="table table-bordered">
                                
                <tbody>
                 <tr>
                     <th width="100" class="success">講師氏名</th>
                    <td width="200"><%=rs.getString("kname")%></td>
                    <th width="110" class="success">フリガナ</th>
                    <td><%=rs.getString("kkana")%></td>
                 </tr>
                 
               </tbody>
               
               <table class="table table-bordered">
                <tbody>
                  <tr>
                   
                    <th width="100" class="active">時給(1コマ)</th>
                    <td width="700">2000円</td>
                    
                    </tr>
                 </tbody></table>
               
              <table class="table table-bordered">
                <tbody>
                  <tr>
                   
                    <th width="100" class="active">今月給料</th>
                    <td width="700"><%=rs.getString("totalprice")%>円</td>
                    
                    </tr>
                 </tbody></table>
                 
               <table class="table table-bordered">
                <tbody>
                   <tr>
                      <th width="100" class="active">次回振込日</th>
                    <td width="200">
                    
                    
                    <SCRIPT LANGUAGE="JavaScript">
<!--
mydate=new Date();
Ye=mydate.getFullYear()+"年";
Mo=mydate.getMonth()+1+"月";
Da=mydate.getDate()+"日";
Day=mydate.getDay();
Day2=new Array(7);
Day2[0]="";Day2[1]="";Day2[2]="";
Day2[3]="";Day2[4]="";Day2[5]="";
Day2[6]="";
document.write("<FONT style='font-size : 15px'>");
document.write(""+Ye+Mo+15+"日"+""+Day2[Day]+"");
document.write("</FONT>");
//-->
</SCRIPT>
                    
                    
                    </td>
                    <th width="110" class="active">今月振込状況</th>
                    <td >未
                    
                    <a href="" class="btn btn-success btn-xs pull-right"><b>変更</b></a>
                    </td></tr>
                 </tbody></table>
                 
                 
                 
               
             
              </table>
            </div>
            
            
            <br><br><br>
                            </div>
                        </div>
                    </div>
      
        		
              
               <% 
     }
	rs.close();
	objSql.close();
	conn.close();
	%>
                
        		<!-- /.content -->
</div>

    <!-- /.content-wrapper -->

            </section>

  
  </table></table></div>
        
 <!-- フッター -->
        <footer class="main-footer">
            <strong>Copyright &copy; Toyama Seminer 2016</strong>, All rights reserved.
        </footer>




    </div><!-- end wrapper -->
    <!-- JS -->

    <!-- jquery -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <!-- bootstrap -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- adminLTE -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
</body>
</html>
