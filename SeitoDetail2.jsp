<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.text.*" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BroadBridgeについて</title>
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
        <a href="/BBM/pages/charts/index.jsp" class="logo">
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
                      

                    <!-- 右に寄せるメニュ :navbar-rightとかもあるが、マージが無い -->
                     <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                        	<li><a href="/BBM/pages/charts/index.jsp"><i class="fa fa-home"></i>ホーム</a></li>
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
                        <a href="/BBM/pages/calendar.html"><i class="fa fa-calendar"></i>授業スケジュール<i class="fa fa-angle-left pull-right"></i></a>
                        
                        <li class="treeview">
                         <a href="/BBM/pages/charts/record.jsp"><i class="fa fa-bar-chart"></i>成績記録<i class="fa fa-angle-left pull-right"></i></a>
                       
                        <li class="treeview">
                        <a href="/BBM/pages/mailbox/mail.html"><i class="fa fa-envelope-o"></i>お問い合わせ<i class="fa fa-angle-left pull-right"></i></a>
                        
                        <li class="treeview">
                         <a href="/BBM/About.jsp"><i class="fa fa-question-circle"></i>BroadBridgeについて<i class="fa fa-angle-left pull-right"></i></a>
                                            </li>
                    
                </ul>
                

            </section>

        </aside>

        <!-- content -->
        <div class="content-wrapper">

            <!-- コンテンツヘッダ -->
            <section class="content-header">
            <h4><b>登録情報　<a type="button" class="btn btn-default btn-sm" href="/BBM/pages/charts/index.jsp"><b>戻る</b></a></b></h4>
             
                
                <!-- パンくず -->
                   
            </section>

            <!-- メインコンテンツ -->
            <section class="content">
            
      
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
	  
	  
	  ResultSet rs=objSql.executeQuery("select * from seito_list,(select max(total1),max(total2),max(total3),max(total4),max(total5),max(total6)"
			  +" from record_list where sname ='山田太郎') as tl where sname ='山田太郎'");
	  while(rs.next()){
		%>
      
    
           
		<div class="col-xs-4">
                        <div class="box box-warning">
                            <div class="box-body box-profile"><br>
                            <img class="profile-user-img img-responsive img-circle" src="https://lh3.googleusercontent.com/-BuwtxEtwU-Q/AAAAAAAAAAI/AAAAAAAAATM/h2DNc3Fi1hs/photo.jpg" alt="User profile picture">                  
                  <br>
                  <h3 class="profile-username text-center"><strong><%=rs.getString("sname")%></strong></h3>
                  
                 
                   <ul class="list-group list-group-unbordered">
                   
                      <li class="list-group-item">
                      <b>学校</b> <br><p class="pull-right"><%=rs.getString("school")%></p><br>
                    </li>
                    
                    <li class="list-group-item">
                      <b>学年</b> <br><p class="pull-right"><%=rs.getString("age")%></p>
                   <br>
                    </li>
                  </ul>
                            </div>
                        </div>
                    </div>




                    <!-- col -->
                    <div class="col-xs-8">
                        <div class="box box-warning">
                            
                            <div class="box-body">
                            <br>
                                <div class="table-responsive">
                                <table class="table table-bordered">
                <tbody>
                 <tr>
                     <th width="100" class="info">保護者氏名</th>
                    <td width="700"><%=rs.getString("hname")%></td>
                 </tr><tr>
                     
               </tbody>
              <table class="table table-bordered">
                <tbody>
                  <tr>
                   
                    <th width="100" class="info">住所</th>
                    <td width="700"><%=rs.getString("home")%></td></tr>
                 </tbody></table>
                 
              
                 
                <table class="table table-bordered">
                <tbody>
                 <tr>
                     <th width="100" class="info">TEL (自宅)</th>
                    <td width="200"><%=rs.getString("tel")%></td>
                    <th width="110" class="info">TEL (保護者)</th>
                    <td><%=rs.getString("htel")%></td>
                 </tr><tr>
                     <th class="info">TEL (生徒)</th>
                    <td><%=rs.getString("stel")%></td>
                 </tr>
               </tbody>
                <div class="col-md-3 col-sm-4"><i class="fa fa-phone"></i></div>
               <table class="table table-bordered">
                <tbody>
                 <tr>
                     <th width="100" class="info">MAIL(保護者)</th>
                    <td width="200"><%=rs.getString("hmail")%></td>
                    <th width="110" class="info">MAIL (生徒)</th>
                    <td><%=rs.getString("smail")%></td>
           		 </tr>
           		 <div class="col-md-3 col-sm-4"><i class="fa fa-envelope-o"></i></div><br>
               </tbody>
         </table>
                
            </div>
            
            
            
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

  
  </table></table>
  
  
  
  </div>
  
  
  
        
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
