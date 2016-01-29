<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生徒管理</title>
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
                        <li class="active"><a href="/BBM/Seito.jsp">新規登録</a></li>
                        <li><a href="/BBM/SeitoList.jsp">生徒一覧</a></li>
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
                    <li>新規登録</li>
                </ol>
            </section>

            <!-- メインコンテンツ -->
            <section class="content">

                <!-- コンテンツ1 -->
               
               
            <!-- ===================================================== -->       
              
                
                <!-- 入力フォーム -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <form method="post" class="form-horizontal">
                        <!--<div class="callout callout-danger">-->
                            <!--<p>共通エラーメッセージ表示エリア</p>-->
                        <!--</div>-->
                        <div class="box">
                         <div class="box-header">
                                <h3 class="box-title">以下の登録が完了しました。</h3>
                            </div>
                            <div class="box-footer">
                           
<div class="text-center">

		<table align="left" border="0" width="600" cellspacing="0" cellpadding="5" >
		<tr ><th width="300" bgcolor="whitesmoke" height="30" align="center">　　　生徒氏名</th><th><td align="center" width="400">${ sname }</th></tr></td>
		<tr><th bgcolor="whitesmoke" height="30">　　　フリガナ　</th><th ><td align="center" width="900">${ skana }</th></tr></td>
		<tr><th bgcolor="whitesmoke" height="30">　　　保護者氏名　</th><th><td align="center" width="900">${ hname }</th></tr></td>
		<tr><th bgcolor="whitesmoke" height="30">　　　性別　</th><th ><td align="center" width="900">${ sex }</th></tr></td>
		<tr><th bgcolor="whitesmoke" height="30">　　　学校名　</th><th ><td align="center" width="900">${ school }</th></tr></td>
		<tr><th bgcolor="whitesmoke" height="30">　　　学年　</th><th><td align="center" width="900">${ age }</th></tr></td>
		<tr><th bgcolor="whitesmoke" height="30">　　　授業タイプ　</th><th ><td align="center" width="900">${ type }</th></tr></td>
		<tr><th bgcolor="whitesmoke" height="30">　　　電話番号　</th><th ><td align="center" width="900">${ tel }</th></tr></td>
		<tr><th bgcolor="whitesmoke" height="30">　　　内容　</th><th><td align="center" width="900">${ naiyo }</th></tr></td>
		</table>                                
                         
                                </div>
                                
                            </div>
                            <br>
                            <center>						
                         
                        <a class="btn btn-app"href="./Seito.jsp">            
	                    <i class="fa fa-edit" ></i> 続けて登録する
	                  </a>
                        </div>       </center>
                                   
                        </form>
                </div>
         </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

</div>

            </section>

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
