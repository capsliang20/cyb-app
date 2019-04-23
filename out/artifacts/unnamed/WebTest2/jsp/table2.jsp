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
    <link href="files/报表管理_离职员工报表/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/报表管理_离职员工报表/data.js"></script>
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
     <!-- 离职员工报表 -->
        
     <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u585" class="ax_default">
        <div id="u585_state0" class="panel_state" data-label="State1" style="">
          <div id="u585_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u586" class="ax_default line">
              <img id="u586_img" class="img " src="images/报表管理_离职员工报表/u586.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u587" class="ax_default _一级标题">
              <div id="u587_div" class=""></div>
              <div id="u587_text" class="text ">
                <p><h6><span>报表管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u588" class="ax_default _二级标题">
              <div id="u588_div" class=""></div>
              <div id="u588_text" class="text ">
                <p><span>离职员工报表</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u589" class="ax_default label">
              <div id="u589_div" class=""></div>
              <div id="u589_text" class="text ">
                <p><span>开始日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u590" class="ax_default label">
              <div id="u590_div" class=""></div>
              <div id="u590_text" class="text ">
                <p><span>结束日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u591" class="ax_default text_field">
              <input id="u591_input" type="date" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u592" class="ax_default text_field">
              <input id="u592_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u593" class="ax_default button">
              <div id="u593_div" class=""></div>
              <div id="u593_text" class="text ">
                <p><span>生成报表</span></p>
              </div>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u594" class="ax_default line">
              <img id="u594_img" class="img " src="images/报表管理_离职员工报表/u586.png"/>
            </div>

            <!-- Unnamed (表格) -->
            <div id="u595" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u596" class="ax_default table_cell">
                <img id="u596_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u596_text" class="text ">
                  <p><span>序号</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u597" class="ax_default table_cell">
                <img id="u597_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u597_text" class="text ">
                  <p><span>部门名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u598" class="ax_default table_cell">
                <img id="u598_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u598_text" class="text ">
                  <p><span>岗位名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u599" class="ax_default table_cell">
                <img id="u599_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u599_text" class="text ">
                  <p><span>姓名</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u600" class="ax_default table_cell">
                <img id="u600_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u600_text" class="text ">
                  <p><span>性别</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u601" class="ax_default table_cell">
                <img id="u601_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u601_text" class="text ">
                  <p><span>离职日期</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u602" class="ax_default table_cell">
                <img id="u602_img" class="img " src="images/离职管理/u247.png"/>
                <div id="u602_text" class="text ">
                  <p><span>离职原因</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u603" class="ax_default table_cell">
                <img id="u603_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u604" class="ax_default table_cell">
                <img id="u604_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u605" class="ax_default table_cell">
                <img id="u605_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u606" class="ax_default table_cell">
                <img id="u606_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u607" class="ax_default table_cell">
                <img id="u607_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u608" class="ax_default table_cell">
                <img id="u608_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u609" class="ax_default table_cell">
                <img id="u609_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u610" class="ax_default table_cell">
                <img id="u610_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u611" class="ax_default table_cell">
                <img id="u611_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u612" class="ax_default table_cell">
                <img id="u612_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u613" class="ax_default table_cell">
                <img id="u613_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u614" class="ax_default table_cell">
                <img id="u614_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u615" class="ax_default table_cell">
                <img id="u615_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u616" class="ax_default table_cell">
                <img id="u616_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u617" class="ax_default table_cell">
                <img id="u617_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u618" class="ax_default table_cell">
                <img id="u618_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u619" class="ax_default table_cell">
                <img id="u619_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u620" class="ax_default table_cell">
                <img id="u620_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u621" class="ax_default table_cell">
                <img id="u621_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u622" class="ax_default table_cell">
                <img id="u622_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u623" class="ax_default table_cell">
                <img id="u623_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u624" class="ax_default table_cell">
                <img id="u624_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u625" class="ax_default table_cell">
                <img id="u625_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u626" class="ax_default table_cell">
                <img id="u626_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u627" class="ax_default table_cell">
                <img id="u627_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u628" class="ax_default table_cell">
                <img id="u628_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u629" class="ax_default table_cell">
                <img id="u629_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u630" class="ax_default table_cell">
                <img id="u630_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u631" class="ax_default table_cell">
                <img id="u631_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u632" class="ax_default table_cell">
                <img id="u632_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u633" class="ax_default table_cell">
                <img id="u633_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u634" class="ax_default table_cell">
                <img id="u634_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u635" class="ax_default table_cell">
                <img id="u635_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u636" class="ax_default table_cell">
                <img id="u636_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u637" class="ax_default table_cell">
                <img id="u637_img" class="img " src="images/离职管理/u292.png"/>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u638" class="ax_default button">
              <div id="u638_div" class=""></div>
              <div id="u638_text" class="text ">
                <p><span>上一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u639" class="ax_default button">
              <div id="u639_div" class=""></div>
              <div id="u639_text" class="text ">
                <p><span>下一页</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!--离职员工报表-->
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

