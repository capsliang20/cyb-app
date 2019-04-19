<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getRequestURI();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path;
%>
<base href="<%=basePath%>"><!把相对路径改为绝对路径!!!!!!>
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
    <link href="files/岗位管理_添加岗位/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/岗位管理_添加岗位/data.js"></script>
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
     <!-- 新建岗位 -->
        
    <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u74" class="ax_default">
        <div id="u74_state0" class="panel_state" data-label="State1" style="">
          <div id="u74_state0_content" class="panel_state_content">

            <!-- Unnamed (动态面板) -->
            <div id="u75" class="ax_default">
              <div id="u75_state0" class="panel_state" data-label="State1" style="">
                <div id="u75_state0_content" class="panel_state_content">

                  <!-- Unnamed (水平线) -->
                  <div id="u76" class="ax_default line">
                    <img id="u76_img" class="img " src="images/部门管理_新建部门/u1.png"/>
                  </div>

                  <!-- Unnamed (矩形) -->
                  <div id="u77" class="ax_default _一级标题">
                    <div id="u77_div" class=""></div>
                    <div id="u77_text" class="text ">
                      <p><h6><span>岗位管理</span></h6></p>
                    </div>
                  </div>

                  <!-- Unnamed (矩形) -->
                  <div id="u78" class="ax_default _二级标题">
                    <div id="u78_div" class=""></div>
                    <div id="u78_text" class="text ">
                      <p><span>增加岗位</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (矩形) -->
                  <div id="u79" class="ax_default label">
                    <div id="u79_div" class=""></div>
                    <div id="u79_text" class="text ">
                      <p><span>岗位id：</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (矩形) -->
                  <div id="u80" class="ax_default label">
                    <div id="u80_div" class=""></div>
                    <div id="u80_text" class="text ">
                      <p><span>岗位名称：</span></p>
                    </div>
                  </div>
<form  action="../PositionInsertAct"  method="post">
                  <!-- Unnamed (文本框) -->
                  <div id="u81" class="ax_default text_field">
                    <input id="u81_input" name="position_id" type="text" value=""/>
                  </div>

                  <!-- Unnamed (文本框) -->
                  <div id="u82" class="ax_default text_field">
                    <input id="u82_input" name="position_name" type="text" value=""/>
                  </div>
                  
                  <!-- Unnamed (矩形) -->
                  <div id="u84" class="ax_default label">
                    <div id="u84_div" class=""></div>
                    <div id="u84_text" class="text ">
                      <p><span>岗位类型：</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (矩形) -->
                  <div id="u85" class="ax_default label">
                    <div id="u85_div" class=""></div>
                    <div id="u85_text" class="text ">
                      <p><span>最大员工数：</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (文本框) -->
                  <div id="u86" class="ax_default text_field">
                    <input id="u86_input" name="max_num" type="text" value=""/>
                  </div>

                  <!-- Unnamed (下拉列表框) -->
                  <div id="u87" class="ax_default droplist">
                    <select id="u87_input" name="position_type">
                    	<option value="技术" selected>技术</option>
              			<option value="管理">管理</option>
              			<option value="营销">营销</option>
              			<option value="其他">其他</option>
                    </select>
                  </div>         
                  
                   <!-- Unnamed (提交按钮) -->
                  <div id="u83" class="ax_default html_button">
                    <input id="u83_input" type="submit" value="增加岗位"/>
                  </div>         
</form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- 新建岗位 -->
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

