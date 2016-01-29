<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.text.*" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生徒一覧</title>
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
                        <li><a href="/BBM/Seito.jsp">新規登録</a></li>
                        <li class="active"><a href="/BBM/SeitoList.jsp">生徒一覧</a></li>
                                <li><a href="">月謝支払状況</a></li>
                                <li><a href="">成績登録</a></li>
                                <li><a href="/BBM/EndAge.jsp">学年末処理</a></li>
                            </ul>
                        </li>
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
                <h1>生徒管理</h1>
                
                <!-- パンくず -->
                <ol class="breadcrumb">
                    <li><a href="">生徒管理</a></li>
                    <li>生徒一覧</li>
                </ol>
            </section>

            <!-- メインコンテンツ -->
            <section class="content">

                <!-- コンテンツ1 -->

      <!-- =============================================== -->
      

      <!-- Content Wrapper. Contains page content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                        <!--<div class="callout callout-danger">-->
                            <!--<p>共通エラーメッセージ表示エリア</p>-->
                        <!--</div>-->
                        <div class="box box-primary">
                         <div class="box-header">
      
                  <h3 class="box-title">生徒一覧</h3>
                  
                  <% 
                  
                request.setCharacterEncoding("UTF-8");
                  
                String word = (String)request.getAttribute("word");
                  
                  %>
                  			<form method="post" action="./SeitoNameSrch.jsp" class="form-horizontal" autocomplete="off">
                   			 <div class="input-group pull-right" style="width: 300px;">
                     			 <input type="search" name="word" class="form-control input-sm pull-right" 
                     			 value="<%= request.getParameter("word") %>"placeholder="名前検索">
                     		 <div class="input-group-btn">
                       			 <button class="btn btn-sm btn-default" type="submit"><i class="fa fa-search"></i></button>
                      		</div></form>
                      
                      
                      		
                      		 <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-25">
                                            <select name="age" class="form-control input-sm" onChange="top.location.href=value">
                                            	<option value="/BBM/SeitoList.jsp">全学年</option>
                                            	<option value="/BBM/SeitoAgeAimai.jsp?age=小学">小学生</option>
                                            	<option value="/BBM/SeitoAgeSrch.jsp?age=小学４年">小学４年</option>
                                            	<option value="/BBM/SeitoAgeSrch.jsp?age=小学５年">小学５年</option>
                                                <option value="/BBM/SeitoAgeSrch.jsp?age=小学６年">小学６年</option>
                                                <option value="/BBM/SeitoAgeAimai.jsp?age=中学">中学生</option>
                                                <option value="/BBM/SeitoAgeSrch.jsp?age=中学１年">中学１年</option>
                                                <option value="/BBM/SeitoAgeSrch.jsp?age=中学２年">中学２年</option>
                                                <option value="/BBM/SeitoAgeSrch.jsp?age=中学３年">中学３年</option>
                                                <option value="/BBM/SeitoAgeSrch.jsp?age=高校生">高校生</option>
                                                <option value="/BBM/SeitoList.jsp">全学年</option>
                                            </select>
                                            
                                        </div>
                                   </div>
                      		
                      		
                      	</div>
                    
                                   
                                                     
                   
                    
                  </div>
                </div>
              <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                
                  <table class="table table-hover">
                    <tr>
                      <th>生徒ID</th>
                      <th>生徒氏名</th>
                      <th>住所</th>
                      <th>学校</th>
                      <th>自宅TEL</th>
                      <th>MAIL</th>
                      <th>授業タイプ</th>
                      <th>特記事項</th>
                      <th></th>
                       <th></th>
                    </tr>
                    
                     <% 
      String url = "jdbc:mysql://localhost:3306/BBM?useUnicode=true&characterEncoding=utf8";
      String user = "root";
      String password = "";
      Connection conn = null;
      
      Class.forName("com.mysql.jdbc.Driver").newInstance();
      conn = DriverManager.getConnection(url, user, password);
	  conn.setReadOnly(true);
	  Statement objSql=conn.createStatement();
	  
	  ResultSet rs=objSql.executeQuery("SELECT * FROM seito_list where sname collate utf8_unicode_ci like '%" + request.getParameter("word") + "%' union SELECT * FROM seito_list where skana collate utf8_unicode_ci like '%" + request.getParameter("word") + "%'");
			
			 
	  
	  while(rs.next()){
		
		%>
                                       <tr>
                      <td><%=rs.getString("seitoID")%></td>
                      <td><A HREF="/BBM/SeitoDetail.jsp?seitoID=<%=rs.getString("seitoID")%>"><%=rs.getString("sname")%></A></td>
                      <td><%=rs.getString("home")%></td>
                      <td><%=rs.getString("school")%></td>
                      <td><%=rs.getString("tel")%></td>
                      <td><%=rs.getString("hmail")%></td>
                      <td><%=rs.getString("type")%></td>
                      <td><%=rs.getString("naiyo")%></td>
                      <td><a href="/BBM/SeitoUpdate.jsp?seitoID=<%=rs.getString("seitoID")%>" class="btn btn-primary btn-xs "><b>変更</b></a></font></td>
                      <td><a href="/BBM/SeitoDelete.jsp?seitoID=<%=rs.getString("seitoID")%>" class="btn btn-primary btn-xs"><b>削除</b></a></font></td>
       
                    </tr>
	   <%
	}
	rs.close();
	objSql.close();
	conn.close();
	%>
                                      </table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
          </div>
        </section>   
   
        		<!-- /.content -->
</div>

    <!-- /.content-wrapper -->

            

  
        



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
