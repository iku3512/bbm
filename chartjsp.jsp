<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.text.*" %>
    
<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8";>
  
    <title>成績詳細</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

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
                        <li><a href="/BBM/SeitoList.jsp">生徒一覧</a></li>
                                <li><a href="">月謝支払状況</a></li>
                                <li class="active"><a href="">成績登録</a></li>
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
        
        
                <% String sname = request.getParameter("sname"); %>
        
      

        <!-- Main content -->
        <section class="content">
                    <p>　　<a type="button" class="btn btn-default btn-sm" href="/BBM/Record.jsp"><b>戻る</b></a></p>
        
          <div class="row">
            <div class="col-md-4">
            
           
            
             <!-- BAR CHART -->
              <div class="box box-success">
                <div class="box-header with-border">
                  <h3 class="box-title">素内申推移</h3>
                  
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                
                <div class="box-body">
                  <div class="chart">
                    <canvas id="barChart" style="height:230px"></canvas>
                 <p style="font-size: 12px; color: #00a65a;" class="pull-right"><i class="fa fa-square"></i> 学年末</p>
                 <br><p style="font-size: 12px; color: #c1c7d1;" class="pull-right"><i class="fa fa-square"></i> １学期　</p>
                  </div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
              
              

            </div><!-- /.col (RIGHT) -->
            
             <div class="col-xs-7">
                        <div class="box box-default">
                        <div class="box-header with-border">
                         <h3 class="box-title"><strong><%=sname%></strong></h3>
                            <div class="box-body table-responsive no-padding"><br>
                            
                            
                            
                  
                   <table class="table table-hover">
                    <tr>
                      <th class="active">学年</th>
                      <th class="active">学期</th>
                      <th class="warning">国語</th>
                      <th class="warning">社会</th>
                      <th class="warning">数学</th>
                      <th class="warning">理科</th>
                      <th class="warning">音楽</th>
                      <th class="warning">美術</th>
                      <th class="warning">体育</th>
                      <th class="warning">技家</th>
                      <th class="warning">英語</th>
                     
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
	  
	  
	  ResultSet rs=objSql.executeQuery("select * from record_list,(select max(total1),max(total2),max(total3),max(total4),max(total5),max(total6)"
			  +" from record_list where sname ='"+sname+"') as tl where sname ='"+sname+"'");
	  while(rs.next()){
		%>
                    
                      <tr>
                      <td><%=rs.getString("age")%></td>
                      <td><%=rs.getString("semester")%></td>
                      <td class="<% if(rs.getString("kokugo").equals("2")){ out.print("danger");}else if(rs.getString("kokugo").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("kokugo")%></td>
                      <td class="<% if(rs.getString("syakai").equals("2")){ out.print("danger");}else if(rs.getString("syakai").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("syakai")%></td>
                      <td class="<% if(rs.getString("sugaku").equals("2")){ out.print("danger");}else if(rs.getString("sugaku").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("sugaku")%></td>
                      <td class="<% if(rs.getString("rika").equals("2")){ out.print("danger");}else if(rs.getString("rika").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("rika")%></td>
                      <td class="<% if(rs.getString("ongaku").equals("2")){ out.print("danger");}else if(rs.getString("ongaku").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("ongaku")%></td>
                      <td class="<% if(rs.getString("bijutu").equals("2")){ out.print("danger");}else if(rs.getString("bijutu").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("bijutu")%></td>
                      <td class="<% if(rs.getString("taiku").equals("2")){ out.print("danger");}else if(rs.getString("taiku").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("taiku")%></td>
                      <td class="<% if(rs.getString("gika").equals("2")){ out.print("danger");}else if(rs.getString("gika").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("gika")%></td>
                      <td class="<% if(rs.getString("eigo").equals("2")){ out.print("danger");}else if(rs.getString("eigo").equals("1")){ out.print("danger");}else{out.print("");}%>"><%=rs.getString("eigo")%></td>
                      
                      
                      
    <!-- jQuery 2.1.4 -->
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <!-- ChartJS 1.0.1 -->
    <script src="../../plugins/chartjs/Chart.min.js"></script>
    <!-- FastClick -->
    <script src="../../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../../dist/js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../../dist/js/demo.js"></script>
    <!-- page script -->
    
  
    
    <script>
    
      $(function () {
        /* ChartJS
         * -------
         * Here we will create a few charts using ChartJS
         */

        //--------------
        //- AREA CHART -
        //--------------

        // Get context with jQuery - using jQuery's .get() method.
        var areaChartCanvas = $("#areaChart").get(0).getContext("2d");
        // This will get the first returned node in the jQuery collection.
        var areaChart = new Chart(areaChartCanvas);

        var areaChartData = {
          labels: ["中学１年", "中学２年", "中学３年"],
          datasets: [
            {
              label: "Electronics",
              fillColor: "rgba(210, 214, 222, 1)",
              strokeColor: "rgba(210, 214, 222, 1)",
              pointColor: "rgba(210, 214, 222, 1)",
              pointStrokeColor: "#c1c7d1",
              pointHighlightFill: "#fff",
              pointHighlightStroke: "rgba(220,220,220,1)",
              data: [<%=rs.getString("max(total1)")%>, <%=rs.getString("max(total3)")%>, <%=rs.getString("max(total5)")%>]
            },
            {
              label: "Digital Goods",
              fillColor: "rgba(60,141,188,0.9)",
              strokeColor: "rgba(60,141,188,0.8)",
              pointColor: "#3b8bba",
              pointStrokeColor: "rgba(60,141,188,1)",
              pointHighlightFill: "#fff",
              pointHighlightStroke: "rgba(60,141,188,1)",
              data: [<%=rs.getString("max(total2)")%>, <%=rs.getString("max(total4)")%>, <%=rs.getString("max(total6)")%>]
            }
          ]
        };
        

        var areaChartOptions = {
          //Boolean - If we should show the scale at all
          showScale: true,
          //Boolean - Whether grid lines are shown across the chart
          scaleShowGridLines: false,
          //String - Colour of the grid lines
          scaleGridLineColor: "rgba(0,0,0,.05)",
          //Number - Width of the grid lines
          scaleGridLineWidth: 1,
          //Boolean - Whether to show horizontal lines (except X axis)
          scaleShowHorizontalLines: true,
          //Boolean - Whether to show vertical lines (except Y axis)
          scaleShowVerticalLines: true,
          //Boolean - Whether the line is curved between points
          bezierCurve: true,
          //Number - Tension of the bezier curve between points
          bezierCurveTension: 0.3,
          //Boolean - Whether to show a dot for each point
          pointDot: false,
          //Number - Radius of each point dot in pixels
          pointDotRadius: 4,
          //Number - Pixel width of point dot stroke
          pointDotStrokeWidth: 1,
          //Number - amount extra to add to the radius to cater for hit detection outside the drawn point
          pointHitDetectionRadius: 20,
          //Boolean - Whether to show a stroke for datasets
          datasetStroke: true,
          //Number - Pixel width of dataset stroke
          datasetStrokeWidth: 2,
          //Boolean - Whether to fill the dataset with a color
          datasetFill: true,
          //String - A legend template
          legendTemplate: "<ul class=\"name.toLowerCase()-legend\"> for (var i=0; i<datasets.length; i++){<li><span style=\"background-color:datasets[i].lineColor\"></span>if(datasets[i].label){datasets[i].label}</li>}</ul>",
          //Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
          maintainAspectRatio: true,
          //Boolean - whether to make the chart responsive to window resizing
          responsive: true
        };

        //Create the line chart
        areaChart.Line(areaChartData, areaChartOptions);

       
        
        //-------------
        //- BAR CHART -
        //-------------
        var barChartCanvas = $("#barChart").get(0).getContext("2d");
        var barChart = new Chart(barChartCanvas);
        var barChartData = areaChartData;
        barChartData.datasets[1].fillColor = "#00a65a";
        barChartData.datasets[1].strokeColor = "#00a65a";
        barChartData.datasets[1].pointColor = "#00a65a";
        var barChartOptions = {
          //Boolean - Whether the scale should start at zero, or an order of magnitude down from the lowest value
          scaleBeginAtZero: true,
          //Boolean - Whether grid lines are shown across the chart
          scaleShowGridLines: true,
          //String - Colour of the grid lines
          scaleGridLineColor: "rgba(0,0,0,.05)",
          //Number - Width of the grid lines
          scaleGridLineWidth: 1,
          //Boolean - Whether to show horizontal lines (except X axis)
          scaleShowHorizontalLines: true,
          //Boolean - Whether to show vertical lines (except Y axis)
          scaleShowVerticalLines: true,
          //Boolean - If there is a stroke on each bar
          barShowStroke: true,
          //Number - Pixel width of the bar stroke
          barStrokeWidth: 2,
          //Number - Spacing between each of the X value sets
          barValueSpacing: 5,
          //Number - Spacing between data sets within X values
          barDatasetSpacing: 1,
          //String - A legend template
          legendTemplate: "<ul class=\"name.toLowerCase()-legend\">for (var i=0; i<datasets.length; i++){<li><span style=\"background-color:datasets[i].fillColor\"></span>if(datasets[i].label){datasets[i].label}</li>}</ul>",
          //Boolean - whether to make the chart responsive
          responsive: true,
          maintainAspectRatio: true
        };

        barChartOptions.datasetFill = false;
        barChart.Bar(barChartData, barChartOptions);
      });
    </script>
    
  
           <%
	}
	rs.close();
	objSql.close();
	conn.close();
	%>   

                      
                      
                      
                      
                    </tr>
                    
                    </table>
                  
                  
                            </div>
                        </div>
                    </div>
                    
                   
                    
                    
          </div><!-- /.row -->
          
          

        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
    
 

             

            </div><!-- /.col (LEFT) -->
            <div class="col-md-1">
              <!-- LINE CHART -->
          
                  
               
                    <canvas id="areaChart" style="height:10px"></canvas>
                  </div>
               <!-- /.box-body -->
            
           
     
      <footer class="main-footer">
            <strong>Copyright &copy; Toyama Seminer 2016</strong>, All rights reserved.
        </footer>

      <!-- Control Sidebar -->
      
       

           
<!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
   
    
    
  </body>
</html>
