<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>支払登録</title>
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
    <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker-bs3.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
     <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="../../plugins/colorpicker/bootstrap-colorpicker.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="../../plugins/timepicker/bootstrap-timepicker.min.css">
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
                        <li ><a href="/BBM/SeitoList.jsp">生徒一覧</a></li>
                                <li class="active"><a href="./Gessya.jsp">月謝支払状況</a></li>
                                <li><a href="./Record.jsp">成績登録</a></li>
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
                <h1><a type="button" class="btn btn-default btn-sm" href="/BBM/Gessya.jsp"><b>戻る</b></a>
                </h1>
                
                <!-- パンくず -->
                <ol class="breadcrumb">
                    <li><a href="">生徒管理</a></li>
                    <li>月謝支払状況</li>
                    <li>支払登録</li>
                    
                </ol>
            </section>

            <!-- メインコンテンツ -->
            <section class="content">

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
	  
	  String seitoID = request.getParameter("seitoID");
	  ResultSet rs=objSql.executeQuery("SELECT * FROM seito_list where seitoID =" + seitoID );
	  	
	  
	  while(rs.next()){
		  
		  
		%>  
        
        
            <div class="row">
                <div class="col-xs-12" >
                   <form method="post" action="./GessyaUpdate?seitoID=<%=rs.getString("seitoID")%>" class="form-horizontal" autocomplete="off">
                        <!--<div class="callout callout-danger">-->
                            <!--<p>共通エラーメッセージ表示エリア</p>-->
                        <!--</div>-->
                        <div class="box box-success">
                         <div class="box-header">
                                <h3 class="box-title">支払登録</h3>
                            </div>
                            <div class="box-body">
                                <br>
                                <div class="form-group">
                                    <label for="htel" class="control-label col-sm-2">氏名</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-4"><%=rs.getString("sname")%></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                <br>
                               
                                  <div class="form-group">
                                    <label for="htel" class="control-label col-sm-2">支払金額</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-4"><input type="price" name="gprice" value="<%=rs.getString("gprice")%>"class="form-control input-sm"/></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                   
                                <br>
                                  <div class="form-group">
                                    <label for="htel" class="control-label col-sm-2">支払日</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-4"><input type="date" name="gdate" value="<%=rs.getString("gdate")%>"class="form-control input-sm"/></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="tel" class="control-label col-sm-2">支払状況</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-4">
                                        
										<select name="gmonth" class="btn btn-default btn-sm">
                                            	<option value="１月分">１月分</option>
                                            	<option value="２月分">２月分</option>
                                                <option value="３月分">３月分</option>
                                                <option value="４月分">４月分</option>
                                                <option value="５月分">５月分</option>
                                                <option value="６月分">６月分</option>
                                                <option value="７月分">７月分</option>
                                                <option value="８月分">８月分</option>
                                                <option value="９月分">９月分</option>
                                                <option value="１０月分">１０月分</option>
                                                <option value="１１月分">１１月分</option>
                                                <option value="１２月分">１２月分</option>
                                            </select>
                                            
                                            <select name="gstatus" class="btn btn-default btn-sm">
                                            	<option value="未">未</option>
                                            	<option value="済">済</option>
                                            
                                            </select>
										                                  
                                        </div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                <br>
  
                                <div class="form-group">
                                    <label for="naiyo" class="control-label col-sm-2">備考</label>
                                    <div class="col-sm-10">
                                                                                  <div class="row"><div class="col-sm-4"><textarea rows="2" name="gnaiyo" class="form-control input-sm"><%=rs.getString("gnaiyo")%></textarea></div></div>
                                       <br><br><br>
                                       
                                       
                                       
                                                    		                             		
                      <button class="btn btn-app" type="submit">         
	                    <i class="fa fa-check" ></i> 　登録する　
	                  </button>       
	                          <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                            </div>
                          <br>  
         
                        </div>
                       </form> 
                </div>
                </div>
            
        </section>
        
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
