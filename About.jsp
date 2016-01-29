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
            <h4><b>BroadBridgeについて　<a type="button" class="btn btn-default btn-sm" href="/BBM/pages/charts/index.jsp"><b>戻る</b></a></b></h4>
             
                
                <!-- パンくず -->
                   
            </section>

            <!-- メインコンテンツ -->
            <section class="content">
            
      
      <!-- =============================================== -->
      
    
           
		
                    <!-- col -->
                    <div class="col-xs-9">
                        <div class="box box">
                            
                            <div class="box-body">
                            <br>
                                <div class="table-responsive">
                                <table class="table table-bordered">
                <tbody>
                 <tr>
                     <th width="100" class="active">企業名</th>
                    <td width="700">ブロードブリッジ</td>
                 </tr><tr>
                     
               </tbody>
              <table class="table table-bordered">
                <tbody>
                  <tr>
                   
                    <th width="100" class="active">住所</th>
                    <td width="700">東京都多摩市豊ケ丘１丁目２１−６</td></tr>
                 </tbody></table>
                 
                  <table class="table table-bordered">
                <tbody>
                  <tr>
                   
                    <th width="100" class="active">開塾時間</th>
                    <td width="700">16:00　〜　22:00</td></tr>
                 </tbody></table>
                 
                  <table class="table table-bordered">
                <tbody>
                  <tr>
                   
                    <th width="100" class="active">H P</th>
                    <td width="700">http://www.broad-bridge.com/　　　　　　<a href="http://www.broad-bridge.com/"><button class="btn btn-sm btn-primary"><b>HPへ</b></button></a></td></tr>
                 </tbody></table>
                 
              
                 
                <table class="table table-bordered">
                <tbody>
                 <tr>
                     <th width="100" class="active">TEL　<i class="fa fa-phone"></i></th>
                    <td width="200">042-357-5223</td>
                    <th width="110" class="active">MAIL　<i class="fa fa-envelope-o"></i></th>
                    <td>broadbridge.tama@gmail.com</td>
                 </tr>               </tbody>
               
               </tbody>
         </table>
         
         <a class="btn btn-social-icon btn-facebook" href="https://www.facebook.com/%E9%AB%98%E6%A0%A1%E5%8F%97%E9%A8%93%E5%A1%BE-Broad-Bridge-156020621220963/"><i class="fa fa-facebook"></i></a>
         <a class="btn btn-social-icon btn-twitter" href="https://twitter.com/BroadBridgeTama"><i class="fa fa-twitter"></i></a>
         <a href="http://www.broad-bridge.com/blog/"><button class="btn btn-success">　<i class="fa fa-edit">ブログ</i>　</button></a>
         
         <br><br>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3243.014680260735!2d139.4274536!3d35.6273646!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6018e34bc6ede64f%3A0x874808c9bc05b2cc!2z44OW44Ot44O844OJ44O744OW44Oq44OD44K4KOmrmOagoeWPl-mok-Whvik!5e0!3m2!1sja!2sjp!4v1453718589601" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>                
            </div>
            
            
            
                            </div>
                        </div>
                        
                       
                    
                    </div>
                    
            	
               <br>
                <div class="row">
                
                
         <br>       
               
                
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
