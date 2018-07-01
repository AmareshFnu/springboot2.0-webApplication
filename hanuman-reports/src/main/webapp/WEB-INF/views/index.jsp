<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Demo | Dashboard </title>
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="resources/plugins/font-awesome/css/font-awesome.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="resources/dist/css/adminlte.min.css">
  <script src="resources/dist/js/amchartslib.js"></script>
  <link rel="stylesheet" href="resources/dist/js/amchart.js">
  <script src="https://www.amcharts.com/lib/3/serial.js"></script>
  <script src="https://www.amcharts.com/lib/3/plugins/dataloader/dataloader.min.js" type="text/javascript"></script>
  <script type="text/javascript" src="https://www.amcharts.com/lib/3/pie.js"></script>
  <link rel="stylesheet" href="resources/dist/css/custom.css">
  <script src="https://www.amcharts.com/lib/3/xy.js"></script>
  <script src="resources/customecharts/dashboardchart.js"></script>
  <script src="resources/customecharts/custome.js"></script>

</head>
<body id="body">
  <section id="Dashboard" style="overflow:hidden"/>
<div class="hold-transition sidebar-mini">
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
   
      <div class="col-sm-6">
        <h1 class="m-0 text-dark heading">PokeIt Dashboard</h1>
      </div>
  

    </nav>
    <!-- /.navbar -->
    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <div class="sidebar">
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="info">
               <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
        </li>
      </ul>
      
            <!-- <a href="Dashboard.html" class="d-block">Home</a> -->
          </div>
        </div>
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <li class="nav-item has-treeview menu-open">
              <a href="#" class="nav-link">
              <i class="nav-icon fa fa-dashboard"></i>
              <p> Dashboard <i class="right fa fa-angle-left"></i></p>              
            </a>
              <ul class="nav nav-treeview">
                <li class="nav-item"> 
                    <a href="#" class="nav-link" >  
                        <i class="nav-icon fa fa-pie-chart"></i>
                        <p>All </p>
                    </a>  
                </li>
                <li class="nav-item"> 
                    <a href="#displayChartSection" class="nav-link" 
                   	onclick="createChart('facilities','defectspiechartcountforeachapp','weekreportforeachapp','last4buildreportforeachapp')">  
                        <i class="nav-icon fa fa-pie-chart"></i>
                        <p>Facilities </p>
                    </a>  
                </li>
                <li class="nav-item">
                  <a href="#displayChartSection" class="nav-link" 
                  onclick="createChart('rrm','defectspiechartcountforeachapp','weekreportforeachapp','last4buildreportforeachapp')">
                  <i class="nav-icon fa fa-book"></i>
                  <p>RRM</p>
                </a>
                </li>
              <li class="nav-item">
                  <a href="#displayChartSection" class="nav-link" onclick="myFunction('mailcenter','defectspiechartcountforeachapp','last4buildreportforeachapp')">
                  <i class="nav-icon fa fa-envelope"></i>
                  <p>Mailcenter</p>
                </a>
                </li>
              </ul>
            </li>
          </ul>
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <li class="nav-item has-treeview menu-open">
              <a href="#ExecuteQuery" class="nav-link ">
              <i class="nav-icon fa fa-dashboard"></i>
              <p>
                Execute Query
                <!-- <i class="right fa fa-angle-left"></i> -->
              </p>
              
            </a>
            </li>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>

    </aside>
    <!-- Content Wrapper. Contains page content -->
    <section id="Dashboard">
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="row">
        <div class="col-lg-3 col-6 boxallign">
          <!-- small box -->
          <div class="small-box bg-info">
            <div class="inner">
              <h2 id="summerytotaltests"></h2>

              <p>Total Tests</p>
            </div>
            <div class="icon">
              <i class="fa fa-database"></i>
            </div>
            <a href="#" class="small-box-footer"></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-6">
          <div class="small-box bg-success">
            <div class="inner">
              <h2 id="summurypassed"></h2>
              <p>Pass</p>
            </div>
            <div class="icon">
              <i class="fa fa-check"></i>
            </div>
            <a href="#" class="small-box-footer"> </a>
          </div>
        </div>
        <div class="col-lg-3 col-6">
          <div class="small-box bg-danger">
            <div class="inner">
              <h2 id="summerytotalfailed"></h2>
              <p>Failed</p>
            </div>
            <div class="icon">
              <i class="fa fa-times"></i>
            </div>
            <a href="#" class="small-box-footer"> </a>
          </div>
        </div>
        <div class="col-lg-3 col-6">
          <div class="small-box bg-warning">
            <div class="inner">
              <h2 id="summerytotalskipped"></h2>
              <p>Skipped</p>
            </div>
            <div class="icon">
              <i class="fa fa-share"></i>
            </div>
            <a href="#" class="small-box-footer"> </a>
          </div>
        </div>
      </div>

      <!-- Main content -->
      <div class="content">
        <div class="container-fluid ">
          <div class="row">
            <div class="col-lg-6">
              <div class="card">
              </div>
              <div class="card" style="margin-top: -14px" ;>
                <div class="card-header no-border">
                  <h4 class="card-title">Execution Breakdown By Applications</h4>
                  <ul class="nav nav-pills ml-auto p-2" style="float: right; margin-top: -30px;">
                    <li class="nav-item">
                      <a class="nav-link active" href="#monthlyportal" data-toggle="tab">All</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#chartdiv2" data-toggle="tab">Weekly</a>
                    </li>
                  </ul>
                </div>
                <div class="card-body">
                  <div class="tab-content p-0">
                    <!-- Morris chart - Sales -->
                    <div class="chart tab-pane active" id="monthlyportal" style="position: relative; height: 304px;"></div>
                    <div class="chart tab-pane" id="chartdiv2" style="position: relative; height: 304px;"></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="card side">
                <div class="card-header no-border">
                  <div class="d-flex justify-content-between">
                    <h4 class="card-title">Radar Component Wise Health </h4>
                  </div>
                </div>
                <div class="position-relative mb-4">
                  <div id="bubblechart"></div>
                </div>
              </div>
           
          </div>
          <!-- Main content -->
          <div class="col-lg-12">
            <div class="card">
              <div class="card-header no-border">

                <h4 class="card-title">Radar Trends</h4>
              </div>
              <div class="position-relative mb-2">
                <div id="piechart" >
                </div>
              </div>
           
            </div>
           
        </div>

</section>
<!--==========================
 single page displayChartSection Section
  ============================-->

<section id="displayChartSection">
  <div class ="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fa fa-bars"></i></a>
      </li>
    </ul>
    <div class="col-sm-6">
            <h1 class="m-0 text-dark heading" >PokeIt Dashboard</h1>
          </div>
  </nav>
    <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
      </div>
    </div>
<div class="row">
          <div class="col-lg-3 col-6 boxallign">
            <div class="small-box bg-info">
              <div class="inner">
                  <h2 id="Total"></h2>
              <p>Total Tests</p>
              </div>
              <div class="icon">
                <i class="fa fa-database"></i>
              </div>
              <a href="#" class="small-box-footer"></a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-success">
              <div class="inner">
                 <h2 id="totalpassed"></h2>
              <p>Pass</p>
              </div>
              <div class="icon">
                <i class="fa fa-check"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box  bg-danger">
              <div class="inner">
                  <h2 id="totalfailed"></h2>
              <p>Failed</p>
              </div>
              <div class="icon">
                <i class="fa fa-share"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
          <div class="col-lg-3 col-6">
            <div class="small-box bg-warning">
              <div class="inner">
               <h2 id="totalskipped"></h2>
              <p>Skipped</p>
              </div>
              <div class="icon">
                <i class="fa fa-times"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
        </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6" >
            <div class="card">  
            </div>
            <div class="card" style="margin-top:-15px;">
             <div class="card-header no-border">
            
                  <h4 class="card-title">Test Execution Trends-Weekly</h4>
                   <ul class="nav nav-pills ml-auto p-2" style="float: right; margin-top: -30px;">
                    <li class="nav-item">
                      <a class="nav-link active" href="#chartsection" data-toggle="tab">Weekly</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#buildwisesection" data-toggle="tab">Build-wise</a>
                    </li>
                  </ul>
                </div>
              <div class="card-body">
                 <div class="tab-content p-0">
                    <!-- Morris chart - Sales -->
                    <div class="chart tab-pane active" id="chartsection" style="position: relative; height: 300px;"></div>
                    <div class="chart tab-pane" id="buildwisesection" style="position: relative; height: 300px;"></div>
                  </div>
                </div>
              </div>
            </div>

          <div class="col-lg-6">
            <div class="card ">
              <div class="card-header no-border">
                <div class="d-flex justify-content-between">
                  <h4 class="card-title">Test Execution-Applications </h4>
                   </div>
              </div>
            <div class="position-relative mb-4">
                  <div id="bubblechart"></div>		
                </div>               
              </div>
            </div>
            <div class="col-lg-12">
            <div class="card">
              <div class="card-header no-border">

                <h4 class="card-title">Radar Trends</h4>
              </div>
              <div class="position-relative mb-2">
                <div id="piechart" 
                style="position: relative; height: 300px;">
                </div>
              </div>
           
            </div>
           
        </div>
          </section>

</section>
  <!--==========================
 single page RRm Section
  ============================-->
<section id="rrm" />
 <div class="content-wrapper">
    <div class="content-header">
      <div class="row">
          <div class="col-lg-3 col-6 boxallign">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
               <h2 id="Totalrrm"></h2>
               <p>Total Tests</p>
              </div>
              <div class="icon">
                <i class="fa fa-database"></i>
              </div>
              <a href="#" class="small-box-footer"></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
               <h2 id="passedrrm"></h2>
              <p>Pass</p>
              </div>
              <div class="icon">
                <i class="fa fa-check"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
              <h2 id="failedrrm"></h2>
              <p>Failed</p>
              </div>
              <div class="icon">
                <i class="fa fa-share"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
               <h2 id="skippedrrm"></h2>
              <p>Skipped</p>
              </div>
              <div class="icon">
                <i class="fa fa-times"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
          <!-- ./col -->
        </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6" style="margin-top:-15px;">
            <div class="card">   
            </div>
            <div class="card">
             <div class="card-header no-border">
                <div class="d-flex justify-content-between">
               <h4 class="card-title">Test Execution Trends-Weekly</h4>
                   <ul class="nav nav-pills ml-auto p-2" style="float: right; margin-top: -30px;">
                    <li class="nav-item">
                      <a class="nav-link active" href="#chartRRM" data-toggle="tab">Weekly</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#buildwiseRRM" data-toggle="tab">Build-wise</a>
                    </li>
                  </ul>
                </div>
              <div class="card-body">
                 <div class="tab-content p-0">
                    <!-- Morris chart - Sales -->
                    <div class="chart tab-pane active" id="chartRRM" style="position: relative; height: 255px;"></div>
                    <div class="chart tab-pane" id="buildwiseRRM" style="position: relative; height: 255px;"></div>
                  </div>
                </div>
              </div>
            </div>

          <div class="col-lg-6">
            <div class="card ">
              <div class="card-header no-border">
                <div class="d-flex justify-content-between">
                  <h4 class="card-title">Test Execution-Applications </h4>
                  </div>
                  </div>
                <div class="position-relative mb-4">
                  <div id="bubblechart"></div>		
                 </div>               
              </div>
            </div>
          <div class="col-lg-12">
           <div class="card">
              <div class="card-header no-border">

                <h4 class="card-title">Defects Trends-Weekly Summary</h4>
                </div>
             <div class="position-relative mb-2">
                <div id="dddfdf" style="width: 55%; height: 320px;margin-top:-60px; margin-left:333px;">

                </div>
             
              </div>
            </div>
          </div>
          </section>
 <div id="dfgf" style="width: 100%; height: 400px; background-color: #FFFFFF;" ></div>
</div>
</div>
</div>
</section>
<section id="mail" />
 <div class="content-wrapper">
    <div class="content-header">
      <div class="row">
          <div class="col-lg-3 col-6 boxallign">
            <!-- small box -->
            <div class="small-box bg-info">
              <div class="inner">
                <h2>400</h2>
                <p>Total Test Cases</p>
              </div>
              <div class="icon">
                <i class="fa fa-database"></i>
              </div>
              <a href="#" class="small-box-footer"></a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-success">
              <div class="inner">
                <h2>250<sup style="font-size: 20px"></sup></h2>

                <p>Passed</p>
              </div>
              <div class="icon">
                <i class="fa fa-check"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-warning">
              <div class="inner">
                 <h2>100<sup style="font-size: 20px"></sup></h2>
                <p>Skipped</p>
              </div>
              <div class="icon">
                <i class="fa fa-share"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
          <!-- ./col -->
          <div class="col-lg-3 col-6">
            <!-- small box -->
            <div class="small-box bg-danger">
              <div class="inner">
               <h2>150<sup style="font-size: 20px"></sup></h2>

                <p>Failed</p>
              </div>
              <div class="icon">
                <i class="fa fa-times"></i>
              </div>
              <a href="#" class="small-box-footer"> </a>
            </div>
          </div>
          <!-- ./col -->
        </div>
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6" style="margin-top:-15px;">
            <div class="card">   
            </div>
            <div class="card">
             <div class="card-header no-border">
                <div class="d-flex justify-content-between">
                     <h4 class="card-title">Test Execution Trends-Weekly</h4>
                   <ul class="nav nav-pills ml-auto p-2" style="float: right; margin-top: -30px;">
                    <li class="nav-item">
                      <a class="nav-link active" href="#chartRRM" data-toggle="tab">Weekly</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#buildwiseRRM" data-toggle="tab">Build-wise</a>
                    </li>
                  </ul>
                </div>
                  <div class="card-body">
                 <div class="tab-content p-0">
                    <!-- Morris chart - Sales -->
                    <div class="chart tab-pane active" id="chartRRM" style="position: relative; height: 255px;"></div>
                    <div class="chart tab-pane" id="buildwiseRRM" style="position: relative; height: 255px;"></div>
                  </div>
                </div>
              </div>
              </div>
              <div class="card-body">
                <div class="position-relative mb-4">
                  <div id="chartdiv1"></div>	
                </div>
                
              </div>
            </div>
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
            <div class="card side">
              <div class="card-header no-border">
                <div class="d-flex justify-content-between">
                  <h4 class="card-title">Execution Breakdown By Applications</h4>
                   </div>
              </div>
                 <div class="position-relative mb-4">
              <div id="bubblechart"></div>		
                </div>
                 <div class="d-flex flex-row justify-content-end">
                </div>
              </div>
            </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-6">
           <div class="card boxheight">
              <div class="card-header no-border">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">Defects Trends-Weekly Summary</h3>
                
                </div>
              </div>
              <div class="card-body">
                
                <!-- /.d-flex -->
                   <div class="position-relative mb-4">
              <div id="chartdiv2"></div>		
                </div>
               
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
           <div class="card boxheight">
              <div class="card-header no-border">
                <div class="d-flex justify-content-between">
                  <h3 class="card-title">Defects Trends-Applications</h3>
                
                </div>
              </div>
              <div class="card-body">
                
                <!-- /.d-flex -->
                   <div class="position-relative mb-4">
              <div id="chartdiv3"></div>		
                </div>       
                <!-- /.d-flex -->
                <div class="position-relative mb-4"  style="width: 775px;">
                </div>
                </div>
              </div>
            </div>
        </div>
        <!-- /.row -->
 <div id="vcb" style="width: auto; height: 400px; background-color: #FFFFFF;" ></div>
</div>
 </section>
<section id="ExecuteQuery" />
 <div class="content-wrapper"> 
    <!-- Content Header (Page header) -->
    <div class="content-header">
            <section class="content">
                <div class="container">
                    <form class="form-horizontal" role="form" action="executePlan.jsp" method="post">
                         <div class="radio" >
                                <lable class="radio-inline"><input type="radio" value="xlsDriven" name="radio1"  checked="checked"> XLS Driven</lable>
                                <!-- <label class="radio-inline"><input type="radio" value="dbDriven" name="radio1"> DB Driven </label> -->
                         </div></br>
                         <div class="form-group" id="xlsDiv">
                            <label class="control-label col-sm-3" for="text">Enter the File Path :</label>
                              <div class="col-sm-9">
                                <input type="text" class="form-control" id="xlsPath" placeholder="Enter the file path" name="plan" value="">
                              </div>
                        </div>
                         <div class="form-group" id="dbDiv">
                            <label class="control-label col-sm-3" for="text">Enter Application Name :</label>
                              <div class="col-sm-9">
                                <input type="text" class="form-control" id="appName" placeholder="Enter application name" name="appName" value="">
                              </div>
                        </div> 
                          <div class="form-group">  
                               <label class="checkbox-inline ">
                                  <input type="checkbox" name="summary"> Summary Report
                               </label>
                               <label class="checkbox-inline">
                                  <input type="checkbox" checked="checked" name="detail"> Detail Report
                               </label>
                          </div>      
                         <div class="form-group">        
                              <div class="col-sm-offset-2">
                                <button type="submit" class="btn btn-default">Submit</button>
                              </div>
                        </div>
                   </form> 
               </div>  
                  </div>
                </section>
        <!-- jQuery -->
        <script src="plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
        <!-- AdminLTE -->
        <script src="dist/js/adminlte.js"></script>
<script>
  // http://10.1.2.109:8083/pokeit/defectspiechartcountforeachapp/Facilities 
  function myFunction(sectionId,urlpart1,urlpart2){
    var urlPrefix = "http://10.1.2.109:8083/pokeit/";
    // var urlpieprefix="http://10.1.2.109:8083/pokeit/defectspiechartcountforeachapp/";
    var buildSummeryOptUrl = 
    'http://10.1.2.109:8083/pokeit/summaryforeachapp/'+sectionId;
      var leftGraphUrl =  urlPrefix + urlpart1 +"/"+ sectionId;
      //  var downpiechartUrl=urlPrefix + urlpart3+"/"+ sectionId;
      var rightGraphUrl =  urlPrefix + urlpart2 +"/"+ sectionId;
      var gUrl = [leftGraphUrl,rightGraphUrl];
      for(var i=0; i<gUrl.length;i++){
        if(gUrl[i].indexOf(sectionId) > -1){
          if(gUrl[i].indexOf("weekreportforeachapp") > -1) {
            var elmId="chartsection";
            var categoryField ="week";
            displayGraph(gUrl[i],elmId,categoryField);
          }else if(gUrl[i].indexOf("last4buildreportforeachapp") > -1){
            var elmId="buildwisesection";
            var categoryField ="buildNumber";
            displayGraph(gUrl[i],elmId,categoryField);
          } 
          // else if(gUrl[i].indexOf("defectspiechartcountforeachapp") > -1){
          //    var elmId="piechart";
          //  displayGraph(gUrl[i],elmId1);
          // }
        }        
      }

      fetch(buildSummeryOptUrl).then((res) => {
          res.json().then(data => {
    
          document.getElementById('Total').innerHTML = + data[0].totatTests;
          document.getElementById('totalpassed').innerHTML = + data[0].passed;
          document.getElementById('totalfailed').innerHTML = + data[0].failed;
          document.getElementById('totalskipped').innerHTML = + data[0].skipped;
          });
      }).catch((err) => {
          console.log('Error: ', err);
      });
  
  }
function displayGraph(url,elmId,categoryField){
    var chart = AmCharts.makeChart(elmId,{
    "type": "serial",
    "theme": "none",
    "categoryField": categoryField,
    "rotate": true,
    "startDuration": 1,
    "categoryAxis": {
      "gridPosition": "start",
      "position": "left"
    },
    "dataLoader": {
      "enabled": true,
      "url": url,
      "format": "json"
    },
    "valueAxes": [ {
      "gridColor": "#FFFFFF",
      "gridAlpha": 0.1,
      "dashLength": 0
    } ],
    "gridAboveGraphs": false,
    "startDuration": 1,
    "graphs": [ {
      "fillAlphas": 0.8,
      "lineAlpha": 0.1,
      "type": "column",
      "valueField": "passed",
      "fixedColumnWidth": 8,
      "fillColors":"#28a745"
    },
    { 
      "fillAlphas": 0.8,
      "lineAlpha": 0.1,
      "type": "column",
      "valueField": "failed",
      "fixedColumnWidth": 8,
      "fillColors":"#dc3545"
      
    },
    {
      "fillAlphas": 0.8,
      "lineAlpha": 0.2,
      "type": "column",
      "valueField": "passed",
      "valueField": "failed",
    "valueField": "skipped",
      "fixedColumnWidth": 8,
      "fillColors":"#ffc107" 
    }],
    "chartCursor": {
      "categoryBalloonEnabled": false,
      "cursorAlpha": 0,
      "zoomable": false
    },
    "categoryField": categoryField,
    "categoryAxis": {
      "gridPosition": "middle",
      "gridAlpha": 0,
    "tickPosition": "middle",
      "tickLength":'0'

    },
   
      "dataProvider": []

  });
}

function createChart(chartname,application){
  let pieChartUrl = 'http://10.1.2.109:8083/pokeit/' + application + '/' +
  chartname;
  
  var chart = AmCharts.makeChart("piechart", {
  "type": "pie",
  "theme": "light",
  "legend": {
    "markerType": "square",
    "position": "right",
    "autoMargins": false
  },
  "dataLoader": {
      "enabled": true,
      "url": pieChartUrl,
      "format": "json"
  },
  "valueField": "value",
  "titleField": "priority",
   "balloon":{
   "fixedPosition":true
  },
  "export": {
    "enabled": true
  }
} );
  }
  

// piechart implementataion
// function displayGraph(url,elmId){
//     var chart = AmCharts.makeChart(elmId,{
//   //  var chart = AmCharts.makeChart("piecharts", {
//        "type": "pie",
//       "theme": "none",
//      "labelText": "[[percents]]%",
//      "autoMargins": false,
//      "areaValue": 30, //value used for segment height/area
//      "realValue": 300,
//    "innerRadius": "40%",
//     "legend": {
//     "markerType": "square",
//     "position": "right",
//     "autoMargins": false
//   },
//       "dataLoader": {
//        "enabled": true,
//        "url": url,
//        "format": "json"
//        },
//       "valueField": "value",
//       "titleField": "priority",
//       "colorField": "color",
//       "balloon": {
//         "fixedPosition": true
//       }
//     });
// }

</script> 

</body>

</html>
