<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.text.*" %>
    
<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
  
    <title>ホーム</title>
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
    
     <!-- Date Picker -->
    <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker-bs3.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
     <script>
function clock() {
var myDay = new Array("Sun","Mon","Tue","Wed","Thr","Fri","Sat");
var now  = new Date();
var year = now.getFullYear(); // 年
var month = now.getMonth()+1; // 月
var date = now.getDate(); // 日
var day = now.getDay();
var hour = now.getHours(); // 時
var min  = now.getMinutes(); // 分
var sec  = now.getSeconds(); // 秒

// 数値が1桁の場合、頭に0を付けて2桁で表示する指定
if(hour < 10) { hour = "0" + hour; }
if(min < 10) { min = "0" + min; }
if(sec < 10) { sec = "0" + sec; }

// フォーマット①

// フォーマット②
var clock2 = month + ' - ' + date  + ' - ' + myDay[day]  +'   '+ hour + ':' + min + ':' + sec ;

document . getElementById( 'clock-02' ) . innerHTML= clock2 . toLocaleString(); // div id="clock-02"

// 1000ミリ秒ごとに処理を実効
window . setTimeout( "clock()", 1000);
}
window . onload = clock;
</script>
    
  </head>
  <body class="hold-transition skin-green sidebar-mini">
    <div class="wrapper">

    <header class="main-header">
     <!-- Logo -->
        <a href="/BBM/index2.jsp" class="logo">
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
        
        
                <% String sname = request.getParameter("sname"); %>
        
      
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

        <!-- Main content -->
        <section class="content">
        
                    <h4><b>　ようこそ　<%=rs.getString("sname")%>さん</b></h4><br>
                  
                  
                  
                <!-- コンテンツ1 -->

      <!-- =============================================== -->
      
    
           
		
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
        
          <div class="row">
            <div class="col-md-4">
            
           
            
             <!-- BAR CHART -->
              <div class="box box-primary">
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
            
          
           <section class="col-md-8 connectedSortable">
              <!-- Custom tabs (Charts with tabs)-->
              <div class="nav-tabs-custom">
           <div class="box box-primary">
                <div class="box-header">
                  <i class="ion ion-clipboard"></i>
                  <h3 class="box-title">To Do List</h3>
                  <div class="box-tools pull-right">
                    <ul class="pagination pagination-sm inline">
                      <li><a href="#">&laquo;</a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">&raquo;</a></li>
                    </ul>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body">
                  <ul class="todo-list">
                    <li>
                      <!-- drag handle -->
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <!-- checkbox -->
                      <input type="checkbox" value="" name="">
                      <!-- todo text -->
                      <span class="text">社会宿題</span>
                      <!-- Emphasis label -->
                      <small class="label label-danger"><i class="fa fa-clock-o"></i> 2 mins</small>
                      <!-- General tools such as edit or delete-->
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">漢字テスト復習</span>
                      <small class="label label-info"><i class="fa fa-clock-o"></i> 4 hours</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">参考書買う</span>
                      <small class="label label-warning"><i class="fa fa-clock-o"></i> 1 day</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">進路相談にのってもらう</span>
                      <small class="label label-success"><i class="fa fa-clock-o"></i> 3 days</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    
                                          <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" name="">
                      <span class="text">本返しに行く</span>
                      <small class="label label-default"><i class="fa fa-clock-o"></i> 1 month</small>
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                  </ul>
                </div><!-- /.box-body -->
                <div class="box-footer clearfix no-border">
                  <button class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button>
                </div>
              </div><!-- /.box -->

                
            </section><!-- /.Left col -->
          
          
          
          
            
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
    
 

             

        
               <!-- /.box-body -->
            
           
     
      <footer class="main-footer">
            <strong>Copyright &copy; Toyama Seminer 2016</strong>, All rights reserved.
        </footer>

      <!-- Control Sidebar -->
      
       

           
<!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
   
     </div><!-- /.col (LEFT) -->
            <div class="col-md-0">
              <!-- LINE CHART -->
          
                  
               
                    <canvas id="areaChart" style="height:0px"></canvas>
                  </div>
  
  
    
  </body>
</html>
