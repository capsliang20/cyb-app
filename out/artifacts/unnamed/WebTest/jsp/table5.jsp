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
    <link href="files/报表管理_人事月报/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/报表管理_人事月报/data.js"></script>
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
                
                
            </div>
           
        </nav>
 

        <div >
     <!-- 人事月报 -->
        
     <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u756" class="ax_default">
        <div id="u756_state0" class="panel_state" data-label="State1" style="">
          <div id="u756_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u757" class="ax_default line">
              <img id="u757_img" class="img " src="images/报表管理_人事月报/u757.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u758" class="ax_default _一级标题">
              <div id="u758_div" class=""></div>
              <div id="u758_text" class="text ">
                <p><h6><span>报表管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u759" class="ax_default _二级标题">
              <div id="u759_div" class=""></div>
              <div id="u759_text" class="text ">
                <p><span>人事月报</span></p>
              </div>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u760" class="ax_default line">
              <img id="u760_img" class="img " src="images/报表管理_人事月报/u757.png"/>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u761" class="ax_default html_button">
              <input id="u761_input" type="submit" value="生成报表"/>
            </div>

            <!-- Unnamed (表格) -->
            <div id="u762" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u763" class="ax_default table_cell">
                <img id="u763_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u764" class="ax_default table_cell">
                <img id="u764_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u765" class="ax_default table_cell">
                <img id="u765_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u766" class="ax_default table_cell">
                <img id="u766_img" class="img " src="images/报表管理_人事月报/u766.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u767" class="ax_default table_cell">
                <img id="u767_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u768" class="ax_default table_cell">
                <img id="u768_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u769" class="ax_default table_cell">
                <img id="u769_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u770" class="ax_default table_cell">
                <img id="u770_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u771" class="ax_default table_cell">
                <img id="u771_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u772" class="ax_default table_cell">
                <img id="u772_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u773" class="ax_default table_cell">
                <img id="u773_img" class="img " src="images/报表管理_人事月报/u773.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u774" class="ax_default table_cell">
                <img id="u774_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u775" class="ax_default table_cell">
                <img id="u775_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u776" class="ax_default table_cell">
                <img id="u776_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u777" class="ax_default table_cell">
                <img id="u777_img" class="img " src="images/报表管理_人事月报/u766.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u778" class="ax_default table_cell">
                <img id="u778_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u779" class="ax_default table_cell">
                <img id="u779_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u780" class="ax_default table_cell">
                <img id="u780_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u781" class="ax_default table_cell">
                <img id="u781_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u782" class="ax_default table_cell">
                <img id="u782_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u783" class="ax_default table_cell">
                <img id="u783_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u784" class="ax_default table_cell">
                <img id="u784_img" class="img " src="images/报表管理_人事月报/u773.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u785" class="ax_default table_cell">
                <img id="u785_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u786" class="ax_default table_cell">
                <img id="u786_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u787" class="ax_default table_cell">
                <img id="u787_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u788" class="ax_default table_cell">
                <img id="u788_img" class="img " src="images/报表管理_人事月报/u766.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u789" class="ax_default table_cell">
                <img id="u789_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u790" class="ax_default table_cell">
                <img id="u790_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u791" class="ax_default table_cell">
                <img id="u791_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u792" class="ax_default table_cell">
                <img id="u792_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u793" class="ax_default table_cell">
                <img id="u793_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u794" class="ax_default table_cell">
                <img id="u794_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u795" class="ax_default table_cell">
                <img id="u795_img" class="img " src="images/报表管理_人事月报/u773.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u796" class="ax_default table_cell">
                <img id="u796_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u797" class="ax_default table_cell">
                <img id="u797_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u798" class="ax_default table_cell">
                <img id="u798_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u799" class="ax_default table_cell">
                <img id="u799_img" class="img " src="images/报表管理_人事月报/u766.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u800" class="ax_default table_cell">
                <img id="u800_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u801" class="ax_default table_cell">
                <img id="u801_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u802" class="ax_default table_cell">
                <img id="u802_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u803" class="ax_default table_cell">
                <img id="u803_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u804" class="ax_default table_cell">
                <img id="u804_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u805" class="ax_default table_cell">
                <img id="u805_img" class="img " src="images/报表管理_人事月报/u763.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u806" class="ax_default table_cell">
                <img id="u806_img" class="img " src="images/报表管理_人事月报/u773.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u807" class="ax_default table_cell">
                <img id="u807_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u808" class="ax_default table_cell">
                <img id="u808_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u809" class="ax_default table_cell">
                <img id="u809_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u810" class="ax_default table_cell">
                <img id="u810_img" class="img " src="images/报表管理_人事月报/u810.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u811" class="ax_default table_cell">
                <img id="u811_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u812" class="ax_default table_cell">
                <img id="u812_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u813" class="ax_default table_cell">
                <img id="u813_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u814" class="ax_default table_cell">
                <img id="u814_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u815" class="ax_default table_cell">
                <img id="u815_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u816" class="ax_default table_cell">
                <img id="u816_img" class="img " src="images/报表管理_人事月报/u807.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u817" class="ax_default table_cell">
                <img id="u817_img" class="img " src="images/报表管理_人事月报/u817.png"/>
              </div>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u818" class="ax_default html_button">
              <input id="u818_input" type="submit" value="下一页"/>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u819" class="ax_default html_button">
              <input id="u819_input" type="submit" value="上一页"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u820" class="ax_default label">
              <div id="u820_div" class=""></div>
              <div id="u820_text" class="text ">
                <p><span>月份选择：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u821" class="ax_default text_field">
              <input id="u821_input" type="month" value=""/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u822" class="ax_default line">
              <img id="u822_img" class="img " src="images/报表管理_人事月报/u822.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u823" class="ax_default line">
              <img id="u823_img" class="img " src="images/报表管理_人事月报/u822.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u824" class="ax_default line">
              <img id="u824_img" class="img " src="images/报表管理_人事月报/u824.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u825" class="ax_default line">
              <img id="u825_img" class="img " src="images/报表管理_人事月报/u824.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u826" class="ax_default line">
              <img id="u826_img" class="img " src="images/报表管理_人事月报/u824.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u827" class="ax_default line">
              <img id="u827_img" class="img " src="images/报表管理_人事月报/u824.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u828" class="ax_default line">
              <img id="u828_img" class="img " src="images/报表管理_人事月报/u824.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u829" class="ax_default line">
              <img id="u829_img" class="img " src="images/报表管理_人事月报/u822.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u830" class="ax_default line">
              <img id="u830_img" class="img " src="images/报表管理_人事月报/u824.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u831" class="ax_default line">
              <img id="u831_img" class="img " src="images/报表管理_人事月报/u824.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u832" class="ax_default line">
              <img id="u832_img" class="img " src="images/报表管理_人事月报/u824.png"/>
            </div>

            <!-- Unnamed (垂直线) -->
            <div id="u833" class="ax_default line">
              <img id="u833_img" class="img " src="images/报表管理_人事月报/u822.png"/>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u834" class="ax_default line">
              <img id="u834_img" class="img " src="images/报表管理_人事月报/u834.png"/>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u835" class="ax_default line">
              <img id="u835_img" class="img " src="images/报表管理_人事月报/u835.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u836" class="ax_default label">
              <div id="u836_div" class=""></div>
              <div id="u836_text" class="text ">
                <p><span>部门名称</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u837" class="ax_default label">
              <div id="u837_div" class=""></div>
              <div id="u837_text" class="text ">
                <p><span>月初人数</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u838" class="ax_default label">
              <div id="u838_div" class=""></div>
              <div id="u838_text" class="text ">
                <p><span>月末人数</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u839" class="ax_default label">
              <div id="u839_div" class=""></div>
              <div id="u839_text" class="text ">
                <p><span>本月新入职</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u840" class="ax_default label">
              <div id="u840_div" class=""></div>
              <div id="u840_text" class="text ">
                <p><span>本月离职</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u841" class="ax_default label">
              <div id="u841_div" class=""></div>
              <div id="u841_text" class="text ">
                <p><span>本月调入</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u842" class="ax_default label">
              <div id="u842_div" class=""></div>
              <div id="u842_text" class="text ">
                <p><span>本月调出</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u843" class="ax_default label">
              <div id="u843_div" class=""></div>
              <div id="u843_text" class="text ">
                <p><span>研究生</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u844" class="ax_default label">
              <div id="u844_div" class=""></div>
              <div id="u844_text" class="text ">
                <p><span>本科</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u845" class="ax_default label">
              <div id="u845_div" class=""></div>
              <div id="u845_text" class="text ">
                <p><span>大专</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u846" class="ax_default label">
              <div id="u846_div" class=""></div>
              <div id="u846_text" class="text ">
                <p><span>高中及以下</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u847" class="ax_default label">
              <div id="u847_div" class=""></div>
              <div id="u847_text" class="text ">
                <p><span>学历统计</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u848" class="ax_default label">
              <div id="u848_div" class=""></div>
              <div id="u848_text" class="text ">
                <p><span>人数统计</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!--人事月报-->
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

