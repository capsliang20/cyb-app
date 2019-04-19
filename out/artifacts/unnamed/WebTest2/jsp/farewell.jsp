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
    <link href="files/离职管理/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/离职管理/data.js"></script>
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
     <!-- 离职管理 -->
        
     <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u206" class="ax_default">
        <div id="u206_state0" class="panel_state" data-label="State1" style="">
          <div id="u206_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u207" class="ax_default line">
              <img id="u207_img" class="img " src="images/离职管理/u207.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u208" class="ax_default _一级标题">
              <div id="u208_div" class=""></div>
              <div id="u208_text" class="text ">
                <p><h6><span>离职管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u209" class="ax_default _二级标题">
              <div id="u209_div" class=""></div>
              <div id="u209_text" class="text ">
                <p><span>员工离职</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u210" class="ax_default label">
              <div id="u210_div" class=""></div>
              <div id="u210_text" class="text ">
                <p><span>部门id：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u211" class="ax_default label">
              <div id="u211_div" class=""></div>
              <div id="u211_text" class="text ">
                <p><span>离职类型：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u212" class="ax_default text_field">
              <input id="u212_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u213" class="ax_default text_field">
               <select id="u232_input">
              </select>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u214" class="ax_default html_button">
              <input id="u214_input" type="submit" value="员工离职"/>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u215" class="ax_default line">
              <img id="u215_img" class="img " src="images/离职管理/u215.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u216" class="ax_default label">
              <div id="u216_div" class=""></div>
              <div id="u216_text" class="text ">
                <p><span>员工id：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u217" class="ax_default text_field">
              <input id="u217_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u218" class="ax_default text_field">
              <input id="u218_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u219" class="ax_default label">
              <div id="u219_div" class=""></div>
              <div id="u219_text" class="text ">
                <p><span>离职去向：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u220" class="ax_default _二级标题">
              <div id="u220_div" class=""></div>
              <div id="u220_text" class="text ">
                <p><span>离职员工信息查询</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u221" class="ax_default label">
              <div id="u221_div" class=""></div>
              <div id="u221_text" class="text ">
                <p><span>员工id：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u222" class="ax_default text_field">
              <input id="u222_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u223" class="ax_default label">
              <div id="u223_div" class=""></div>
              <div id="u223_text" class="text ">
                <p><span>部门id：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u224" class="ax_default text_field">
              <input id="u224_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u225" class="ax_default label">
              <div id="u225_div" class=""></div>
              <div id="u225_text" class="text ">
                <p><span>员工姓名：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u226" class="ax_default text_field">
              <input id="u226_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u227" class="ax_default label">
              <div id="u227_div" class=""></div>
              <div id="u227_text" class="text ">
                <p><span>部门名称：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u228" class="ax_default text_field">
              <input id="u228_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u229" class="ax_default label">
              <div id="u229_div" class=""></div>
              <div id="u229_text" class="text ">
                <p><span>岗位名称：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u230" class="ax_default text_field">
              <input id="u230_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u231" class="ax_default label">
              <div id="u231_div" class=""></div>
              <div id="u231_text" class="text ">
                <p><span>离职类型：</span></p>
              </div>
            </div>

            <!-- Unnamed (下拉列表框) -->
            <div id="u232" class="ax_default droplist">
              <select id="u232_input">
              </select>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u233" class="ax_default label">
              <div id="u233_div" class=""></div>
              <div id="u233_text" class="text ">
                <p><span>查询开始日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u234" class="ax_default text_field">
              <input id="u234_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u235" class="ax_default label">
              <div id="u235_div" class=""></div>
              <div id="u235_text" class="text ">
                <p><span>查询结束日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u236" class="ax_default text_field">
              <input id="u236_input" type="date" value=""/>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u237" class="ax_default html_button">
              <input id="u237_input" type="submit" value="上一页"/>
            </div>

            <!-- Unnamed (表格) -->
            <div id="u238" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u239" class="ax_default table_cell">
                <img id="u239_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u239_text" class="text ">
                  <p><span>员工编号</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u240" class="ax_default table_cell">
                <img id="u240_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u240_text" class="text ">
                  <p><span>员工姓名</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u241" class="ax_default table_cell">
                <img id="u241_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u241_text" class="text ">
                  <p><span>部门名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u242" class="ax_default table_cell">
                <img id="u242_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u242_text" class="text ">
                  <p><span>岗位名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u243" class="ax_default table_cell">
                <img id="u243_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u243_text" class="text ">
                  <p><span>离职类型</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u244" class="ax_default table_cell">
                <img id="u244_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u244_text" class="text ">
                  <p><span>离职日期</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u245" class="ax_default table_cell">
                <img id="u245_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u245_text" class="text ">
                  <p><span>离职去向</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u246" class="ax_default table_cell">
                <img id="u246_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u246_text" class="text ">
                  <p><span>进入人才库</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u247" class="ax_default table_cell">
                <img id="u247_img" class="img " src="images/离职管理/u247.png"/>
                <div id="u247_text" class="text ">
                  <p><span>备注</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u248" class="ax_default table_cell">
                <img id="u248_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u249" class="ax_default table_cell">
                <img id="u249_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u250" class="ax_default table_cell">
                <img id="u250_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u251" class="ax_default table_cell">
                <img id="u251_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u252" class="ax_default table_cell">
                <img id="u252_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u253" class="ax_default table_cell">
                <img id="u253_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u254" class="ax_default table_cell">
                <img id="u254_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u255" class="ax_default table_cell">
                <img id="u255_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u256" class="ax_default table_cell">
                <img id="u256_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u257" class="ax_default table_cell">
                <img id="u257_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u258" class="ax_default table_cell">
                <img id="u258_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u259" class="ax_default table_cell">
                <img id="u259_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u260" class="ax_default table_cell">
                <img id="u260_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u261" class="ax_default table_cell">
                <img id="u261_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u262" class="ax_default table_cell">
                <img id="u262_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u263" class="ax_default table_cell">
                <img id="u263_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u264" class="ax_default table_cell">
                <img id="u264_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u265" class="ax_default table_cell">
                <img id="u265_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u266" class="ax_default table_cell">
                <img id="u266_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u267" class="ax_default table_cell">
                <img id="u267_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u268" class="ax_default table_cell">
                <img id="u268_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u269" class="ax_default table_cell">
                <img id="u269_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u270" class="ax_default table_cell">
                <img id="u270_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u271" class="ax_default table_cell">
                <img id="u271_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u272" class="ax_default table_cell">
                <img id="u272_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u273" class="ax_default table_cell">
                <img id="u273_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u274" class="ax_default table_cell">
                <img id="u274_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u275" class="ax_default table_cell">
                <img id="u275_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u276" class="ax_default table_cell">
                <img id="u276_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u277" class="ax_default table_cell">
                <img id="u277_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u278" class="ax_default table_cell">
                <img id="u278_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u279" class="ax_default table_cell">
                <img id="u279_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u280" class="ax_default table_cell">
                <img id="u280_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u281" class="ax_default table_cell">
                <img id="u281_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u282" class="ax_default table_cell">
                <img id="u282_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u283" class="ax_default table_cell">
                <img id="u283_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u284" class="ax_default table_cell">
                <img id="u284_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u285" class="ax_default table_cell">
                <img id="u285_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u286" class="ax_default table_cell">
                <img id="u286_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u287" class="ax_default table_cell">
                <img id="u287_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u288" class="ax_default table_cell">
                <img id="u288_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u289" class="ax_default table_cell">
                <img id="u289_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u290" class="ax_default table_cell">
                <img id="u290_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u291" class="ax_default table_cell">
                <img id="u291_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u292" class="ax_default table_cell">
                <img id="u292_img" class="img " src="images/离职管理/u292.png"/>
              </div>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u293" class="ax_default html_button">
              <input id="u293_input" type="submit" value="下一页"/>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u294" class="ax_default html_button">
              <input id="u294_input" type="submit" value="查询"/>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- 离职管理-->
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

