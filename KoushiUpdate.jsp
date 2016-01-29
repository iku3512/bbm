<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録内容変更</title>
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
                        <li class="active"><a href="/BBM/Koushi.jsp">新規登録</a></li>
                        <li><a href="/BBM/KoushiList.jsp">講師一覧</a></li>
                                
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
                <h1>講師管理</h1>
                
                <!-- パンくず -->
                <ol class="breadcrumb">
                    <li><a href="">講師管理</a></li>
                    <li>講師一覧</li>
                    <li>登録内容変更</li>
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
	  
	  String koushiID = request.getParameter("koushiID");
	  ResultSet rs=objSql.executeQuery("SELECT * FROM koushi_list where koushiID =" + koushiID );
	  
	  String sex = request.getParameter("ksex");
	
	  
	  while(rs.next()){
		  
		  
		%>  
        
                  
              
                
                <!-- 入力フォーム -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                   <form method="post" action="./KoushiUpdate?koushiID=<%=rs.getString("koushiID")%>" class="form-horizontal" autocomplete="off">
                        <!--<div class="callout callout-danger">-->
                            <!--<p>共通エラーメッセージ表示エリア</p>-->
                        <!--</div>-->
                        <div class="box box-warning">
                         <div class="box-header">
                                <h3 class="box-title">登録内容変更</h3>
                            </div>
                            <div class="box-body">
                                <div class="form-group">
                                <br>
                                
                                  <div class="form-group">
                                    <label for="kname" class="control-label col-sm-2">講師氏名</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-8"><input type="text" name="kname" value="<%=rs.getString("kname")%>" class="form-control input-sm" placeholder="（例）　山田　太郎" required/></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label for="skana" class="control-label col-sm-2">フリガナ</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-8"><input type="text" name="kkana"value="<%=rs.getString("kkana")%>"class="form-control input-sm" placeholder="（例）　ヤマダ　タロウ"/></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                 <div class="form-group">
                                    <label class="control-label col-sm-2">性別</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-12">
                                            <div class="radio">
                                                <label><input type="radio" class="flat-red"name="ksex" value="男" checked="checked"/>男</label>　
                                                <label><input type="radio" class="flat-red"name="ksex" value="女" <% if(rs.getString("ksex").equals("女")){ out.print("checked"); } %>/>女</label>
                                            </div>
                                        </div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                

                               <br>
                                 <div class="form-group">
                                    <label for="home" class="control-label col-sm-2">住所</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-10"><input type="text" name="khome" value="<%=rs.getString("khome")%>" class="form-control input-sm" placeholder=""/></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                <br>
                                 <div class="form-group">
                                    <label for="school" class="control-label col-sm-2">大学名</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-4"><input type="text" name="kschool" value="<%=rs.getString("khome")%>" class="form-control input-sm" placeholder=""/></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                               
                                <br>
                                  <div class="form-group">
                                    <label class="control-label col-sm-2">学年</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-4">
                                            <select name="kage" class="form-control input-sm">
                                            	<option value="大学１年"<% if(rs.getString("kage").equals("大学１年")){ out.print("selected"); } %>>大学１年</option>
                                            	<option value="大学２年"<% if(rs.getString("kage").equals("大学２年")){ out.print("selected"); } %>>大学２年</option>
                                                <option value="大学３年"<% if(rs.getString("kage").equals("大学３年")){ out.print("selected"); } %>>大学３年</option>
                                                <option value="大学４年"<% if(rs.getString("kage").equals("大学４年")){ out.print("selected"); } %>>大学４年</option>
                                                <option value="院生"<% if(rs.getString("kage").equals("院生")){ out.print("selected"); } %>>院生</option>
                                               
                                             
                                            </select>
                                        </div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                <br>
                                
                                                       <div class="form-group">
                                    <label for="ktel" class="control-label col-sm-2">携帯番号</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-4"><input type="text" name="ktel" value="<%=rs.getString("ktel")%>"class="form-control input-sm" placeholder="00-0000-0000"/></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                               
                                
                                <div class="form-group">
                                    <label for="tel" class="control-label col-sm-2">自宅電話番号</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-4"><input type="text" name="ktel2" class="form-control input-sm" value="<%=rs.getString("ktel2")%>"placeholder="00-0000-0000" required/></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                                <br>
  
                                    <label for="smail" class="control-label col-sm-2">メールアドレス</label>
                                    
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-8"><div class="input-group"><span class="input-group-addon">
                                        <i class="fa fa-envelope"></i></span><input type="text" name="kmail" value="<%=rs.getString("kmail")%>"
                                        class="form-control input-sm" placeholder=""/></div></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>

               <br> 
                <div class="form-group">
                                    <label class="control-label col-sm-2">担当授業</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-12">
                                            <div class="radio">
                                                <label><input type="radio" name="ktype" value="集団" checked="checked"/>集団</label>　
                                                <label><input type="radio" name="ktype" value="個別"<% if(rs.getString("ktype").equals("個別")){ out.print("checked"); } %>/>個別</label>
                                            </div>
                                        </div></div><br>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="naiyo" class="control-label col-sm-2">特記事項</label>
                                    <div class="col-sm-10">
                                        <div class="row"><div class="col-sm-12"><textarea rows="5" name="knaiyo" class="form-control input-sm" placeholder="得意科目等"><%=rs.getString("knaiyo")%></textarea></div></div>
                                        <!--<div class="row"><div class="col-sm-10"><p class="form-control-static text-danger"><small>ここにエラーメッセージを表示します</small></p></div></div>-->
                                    </div>
                                </div>
                            </div>
                            
           
         
                            <div class="box-footer">
                                <div class="text-center">
                               		                             		
                      <button class="btn btn-app" type="submit">         
	                    <i class="fa fa-check" ></i> 　変更する　
	                  </button>       
	                   <a class="btn btn-app"href="" type="reset">            
	                    <i class="fa fa-repeat" ></i> リセットする
	                  </a>            
	              <a class="btn btn-app"href="./KoushiList.jsp">            
	                    <i class="fa fa-close" ></i> 変更せず戻る
	                  </a></h4>
                             		
                                </div>
                            </div>
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
