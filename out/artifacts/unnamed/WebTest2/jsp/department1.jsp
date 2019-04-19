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
    <link href="files/部门管理_新建部门/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/部门管理_新建部门/data.js"></script>
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
     <!-- 新建部门 -->
        
    <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u0" class="ax_default">
        <div id="u0_state0" class="panel_state" data-label="State1" style="">
          <div id="u0_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u1" class="ax_default line">
           
              <img id="u1_img" class="img " src="images/部门管理_新建部门/u1.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u2" class="ax_default _一级标题">
              <div id="u2_div" class=""></div>
              <div id="u2_text" class="text ">
                <p><h6><span>部门管理</span></h6></p>
                
              </div>
            </div>
            
     
            <!-- Unnamed (矩形) -->
            <div id="u3" class="ax_default _二级标题">
              <div id="u3_div" class=""></div>
              <div id="u3_text" class="text ">
              
                <p><span>新建部门</span></p>
                 
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u4" class="ax_default label">
              <div id="u4_div" class=""></div>
              <div id="u4_text" class="text ">
                <p><span>部门id：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u5" class="ax_default label">
              <div id="u5_div" class=""></div>
              <div id="u5_text" class="text ">
                <p><span>部门名称：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u6" class="ax_default text_field">
              <input id="u6_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u7" class="ax_default text_field">
              <input id="u7_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u8" class="ax_default text_field">
              <input id="u8_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u9" class="ax_default label">
              <div id="u9_div" class=""></div>
              <div id="u9_text" class="text ">
                <p><span>电话：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u10" class="ax_default label">
              <div id="u10_div" class=""></div>
              <div id="u10_text" class="text ">
                <p><span>传真：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u11" class="ax_default text_field">
              <input id="u11_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u12" class="ax_default label">
              <div id="u12_div" class=""></div>
              <div id="u12_text" class="text ">
                <p><span>成立日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u13" class="ax_default text_field">
              <input id="u13_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u14" class="ax_default label">
              <div id="u14_div" class=""></div>
              <div id="u14_text" class="text ">
                <p><span>描述：</span></p>
              </div>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u15" class="ax_default html_button">
              <input id="u15_input" type="submit" value="提交"/>
            </div>

            <!-- Unnamed (多行文本框) -->
            <div id="u16" class="ax_default text_area">
              <textarea id="u16_input"></textarea>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- 新建部门 -->
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

