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
    <link href="files/试用期管理_状态修改/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/试用期管理_状态修改/data.js"></script>
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
     <!-- 试用期状态修改 -->
        
 <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u295" class="ax_default">
        <div id="u295_state0" class="panel_state" data-label="State1" style="">
          <div id="u295_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u296" class="ax_default line">
              <img id="u296_img" class="img " src="images/离职管理/u207.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u297" class="ax_default _一级标题">
              <div id="u297_div" class=""></div>
              <div id="u297_text" class="text ">
                <p><h6><span>&nbsp;&nbsp;试用期管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u298" class="ax_default _二级标题">
              <div id="u298_div" class=""></div>
              <div id="u298_text" class="text ">
                <p><span>试用期状态修改</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u299" class="ax_default label">
              <div id="u299_div" class=""></div>
              <div id="u299_text" class="text ">
                <p><span>员工id：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u300" class="ax_default label">
              <div id="u300_div" class=""></div>
              <div id="u300_text" class="text ">
                <p><span>部门名称：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u301" class="ax_default text_field">
              <input id="u301_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u302" class="ax_default text_field">
              <input id="u302_input" type="text" value="" readonly/>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u303" class="ax_default html_button">
              <input id="u303_input" type="submit" value="提交修改"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u304" class="ax_default label">
              <div id="u304_div" class=""></div>
              <div id="u304_text" class="text ">
                <p><span>员工姓名：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u305" class="ax_default text_field">
              <input id="u305_input" type="text" value="" readonly/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u306" class="ax_default text_field">
              <input id="u306_input" type="text" value="" readonly/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u307" class="ax_default label">
              <div id="u307_div" class=""></div>
              <div id="u307_text" class="text ">
                <p><span>岗位名称：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u308" class="ax_default label">
              <div id="u308_div" class=""></div>
              <div id="u308_text" class="text ">
                <p><span>试用期开始时间：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u309" class="ax_default text_field">
              <input id="u309_input" type="date" value="" readonly/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u310" class="ax_default text_field">
              <input id="u310_input" type="date" value="" readonly/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u311" class="ax_default label">
              <div id="u311_div" class=""></div>
              <div id="u311_text" class="text ">
                <p><span>试用期结束时间：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u312" class="ax_default label">
              <div id="u312_div" class=""></div>
              <div id="u312_text" class="text ">
                <p><span>试用期状态：</span></p>
              </div>
            </div>

            <!-- Unnamed (下拉列表框) -->
            <div id="u313" class="ax_default droplist">
              <select id="u313_input">
              </select>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u314" class="ax_default line">
              <img id="u314_img" class="img " src="images/试用期管理_状态修改/u314.png"/>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u315" class="ax_default html_button">
              <input id="u315_input" type="submit" value="查询"/>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- 试用期状态修改 -->
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

