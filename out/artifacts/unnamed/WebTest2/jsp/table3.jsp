<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>PersonalManagement System V1.0</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Paper Dashboard core CSS    -->
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>

    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />

    <!--  Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">


    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/报表管理_部门调动员工报表/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/报表管理_部门调动员工报表/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
</head>
<body>

<div class="wrapper">
	<div class="sidebar" data-background-color="white" data-active-color="danger">

    <!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

    	<div class="sidebar-wrapper">
    		
    		
            <div class="logo">
            	
                  <a href="#" class="simple-text">
                                    系统管理菜单
                </a>
                </li>
            </div>
            

            <ul class="nav">
               <!--部门管理-->
               <li class="dropdown">
                    <a href="#"  class="dropdown-toggle" data-toggle="dropdown">
						 <i class="ti-panel"></i>
						<p >部门管理</p>
						

                    </a>
                    <ul class="dropdown-menu" style="width:60%;margin-left:100px">
                          <li><a href="department1.jsp">新建部门</a></li>
                          <li><a href="department2.jsp">修改部门</a></li>
                          <li><a href="department3.jsp">删除部门</a></li>
                          <li><a href="department4.jsp">查询部门信息</a></li>
                          
                     </ul>

                </li>
              
                
                 <!--岗位管理-->
                <li >
                   <a href="#"  class="dropdown-toggle" data-toggle="dropdown">
                        <i class="ti-panel"></i>
                        <p>岗位管理</p>
                       
                    </a>
                    
                     <ul class="dropdown-menu" style="width:60%;margin-left:100px">
                          <li><a href="position1.jsp">新建岗位</a></li>
                          <li><a href="position2.jsp">修改岗位</a></li>
                          <li><a href="position3.jsp">删除岗位</a></li>
                          <li><a href="position4.jsp">查询岗位下员工</a></li>
                          
                     </ul>
                </li>
                
                 <!--入职管理-->
                <li >
                   <a href="employment.jsp">
                        <i class="ti-user"></i>
                        <p>入职管理</p>
                       
                    </a>
                    
                    
                </li>
                
                 <!--试用期管理-->
                <li >
                    <a href="#"  class="dropdown-toggle" data-toggle="dropdown">
                        <i class="ti-map"></i>
                        <p>试用期管理</p>
                        
                    </a>
                    
                     <ul class="dropdown-menu" style="width:60%;margin-left:100px">
                          <li><a href="trial1.jsp">试用期员工查询</a></li>
                          <li><a href="trial2.jsp">已转正员工查询</a></li>
                       
                     </ul>
                </li>
                
                <!--部门调动管理-->
                <li>
                     <a href="#"  class="dropdown-toggle" data-toggle="dropdown">
                        <i class="ti-map"></i>
                        <p>部门调动</p>
                        
                    </a>
                    
                     <ul class="dropdown-menu" style="width:60%;margin-left:100px">
                          <li><a href="departmentC1.jsp">部门调动</a></li>
                          <li><a href="departmentC2.jsp">已调动员工查询</a></li>
                       
                     </ul>
                </li>
                
                 <!--岗位调动管理-->
                <li>
                   <a href="#"  class="dropdown-toggle" data-toggle="dropdown">
                        <i class="ti-map"></i>
                        <p>岗位调动</p>
                        
                    </a>
                    
                     <ul class="dropdown-menu" style="width:60%;margin-left:100px">
                          <li><a href="positionC1.jsp">岗位调动</a></li>
                          <li><a href="positionC2.jsp">已调动员工查询</a></li>
                       
                     </ul>
                </li>
                
                
                <!--离职管理-->
               <li >
                   <a href="farewell.jsp">
                        <i class="ti-user"></i>
                        <p>离职管理</p>
                    
                    </a>
                    
                    
                </li>
                
                <!--报表管理-->
                <li >
                   <a href="#"  class="dropdown-toggle" data-toggle="dropdown">
                        <i class="ti-view-list-alt"></i>
                        <p>报表管理</p>
                        
                    </a>
                    <div class="btn-group dropup">
                     <ul class="dropdown-menu" style="width:60%;margin-left:100px">
                          <li><a href="table1.jsp">新聘员工报表</a></li>
                          <li><a href="table2.jsp">离职员工报表</a></li>
                          <li><a href="table3.jsp">部门调动报表</a></li>
                          <li><a href="table4.jsp">岗位调动报表</a></li>
                          <li><a href="table5.jsp">人事月报</a></li>
                          
                     </ul>
                     </div>
                </li>
				
            </ul>
    	</div>
    </div>

    <div class="main-panel">
		<nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar bar1"></span>
                        <span class="icon-bar bar2"></span>
                        <span class="icon-bar bar3"></span>
                    </button>
                    <a class="navbar-brand" href="#">人事管理系统V1.0</a>
                    
                </div>
                <div class="collapse navbar-collapse">
                    
                </div>
                
            </div>
           
        </nav>
 

        <div >
     <!-- 部门调动员工报表 -->
        
     <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u640" class="ax_default">
        <div id="u640_state0" class="panel_state" data-label="State1" style="">
          <div id="u640_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u641" class="ax_default line">
              <img id="u641_img" class="img " src="images/离职管理/u215.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u642" class="ax_default _一级标题">
              <div id="u642_div" class=""></div>
              <div id="u642_text" class="text ">
                <p><h6><span>&nbsp;&nbsp;报表管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u643" class="ax_default _二级标题">
              <div id="u643_div" class=""></div>
              <div id="u643_text" class="text ">
                <p><span>部门调动员工报表</span></p>
              </div>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u644" class="ax_default html_button">
              <input id="u644_input" type="submit" value="生成报表"/>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u645" class="ax_default line">
              <img id="u645_img" class="img " src="images/离职管理/u215.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u646" class="ax_default _二级标题">
              <div id="u646_div" class=""></div>
              <div id="u646_text" class="text ">
                <p><span>试用期员工信息</span></p>
              </div>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u647" class="ax_default html_button">
              <input id="u647_input" type="submit" value="上一页"/>
            </div>

            <!-- Unnamed (表格) -->
            <div id="u648" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u649" class="ax_default table_cell">
                <img id="u649_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u649_text" class="text ">
                  <p><span>序号</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u650" class="ax_default table_cell">
                <img id="u650_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u650_text" class="text ">
                  <p><span>原部门名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u651" class="ax_default table_cell">
                <img id="u651_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u651_text" class="text ">
                  <p><span>新部门名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u652" class="ax_default table_cell">
                <img id="u652_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u652_text" class="text ">
                  <p><span>姓名</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u653" class="ax_default table_cell">
                <img id="u653_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u653_text" class="text ">
                  <p><span>性别</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u654" class="ax_default table_cell">
                <img id="u654_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u654_text" class="text ">
                  <p><span>调动日期</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u655" class="ax_default table_cell">
                <img id="u655_img" class="img " src="images/报表管理_部门调动员工报表/u655.png"/>
                <div id="u655_text" class="text ">
                  <p><span>调动原因</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u656" class="ax_default table_cell">
                <img id="u656_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u657" class="ax_default table_cell">
                <img id="u657_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u658" class="ax_default table_cell">
                <img id="u658_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u659" class="ax_default table_cell">
                <img id="u659_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u660" class="ax_default table_cell">
                <img id="u660_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u661" class="ax_default table_cell">
                <img id="u661_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u662" class="ax_default table_cell">
                <img id="u662_img" class="img " src="images/报表管理_部门调动员工报表/u655.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u663" class="ax_default table_cell">
                <img id="u663_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u664" class="ax_default table_cell">
                <img id="u664_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u665" class="ax_default table_cell">
                <img id="u665_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u666" class="ax_default table_cell">
                <img id="u666_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u667" class="ax_default table_cell">
                <img id="u667_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u668" class="ax_default table_cell">
                <img id="u668_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u669" class="ax_default table_cell">
                <img id="u669_img" class="img " src="images/报表管理_部门调动员工报表/u655.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u670" class="ax_default table_cell">
                <img id="u670_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u671" class="ax_default table_cell">
                <img id="u671_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u672" class="ax_default table_cell">
                <img id="u672_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u673" class="ax_default table_cell">
                <img id="u673_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u674" class="ax_default table_cell">
                <img id="u674_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u675" class="ax_default table_cell">
                <img id="u675_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u676" class="ax_default table_cell">
                <img id="u676_img" class="img " src="images/报表管理_部门调动员工报表/u655.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u677" class="ax_default table_cell">
                <img id="u677_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u678" class="ax_default table_cell">
                <img id="u678_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u679" class="ax_default table_cell">
                <img id="u679_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u680" class="ax_default table_cell">
                <img id="u680_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u681" class="ax_default table_cell">
                <img id="u681_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u682" class="ax_default table_cell">
                <img id="u682_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u683" class="ax_default table_cell">
                <img id="u683_img" class="img " src="images/报表管理_部门调动员工报表/u655.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u684" class="ax_default table_cell">
                <img id="u684_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u685" class="ax_default table_cell">
                <img id="u685_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u686" class="ax_default table_cell">
                <img id="u686_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u687" class="ax_default table_cell">
                <img id="u687_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u688" class="ax_default table_cell">
                <img id="u688_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u689" class="ax_default table_cell">
                <img id="u689_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u690" class="ax_default table_cell">
                <img id="u690_img" class="img " src="images/报表管理_部门调动员工报表/u690.png"/>
              </div>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u691" class="ax_default html_button">
              <input id="u691_input" type="submit" value="下一页"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u692" class="ax_default label">
              <div id="u692_div" class=""></div>
              <div id="u692_text" class="text ">
                <p><span>开始时间：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u693" class="ax_default text_field">
              <input id="u693_input" type="date" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u694" class="ax_default text_field">
              <input id="u694_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u695" class="ax_default label">
              <div id="u695_div" class=""></div>
              <div id="u695_text" class="text ">
                <p><span>结束时间：</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
     <!--部门调动员工报表-->
       </div>

    </div>
</div>
        <div class="copyright pull-right">
                    &copy; <script>document.write(new Date().getFullYear())</script>, made with <i class="fa fa-heart heart"></i> by <a href="#">Creative Tim</a>. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
                </div>

</body>

    <!--   Core JS Files   -->
    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="assets/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

    <!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="assets/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

</html>

