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
    <link href="files/报表管理_新聘员工报表/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/报表管理_新聘员工报表/data.js"></script>
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
     <!-- 新聘员工报表 -->
        
      <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u530" class="ax_default">
        <div id="u530_state0" class="panel_state" data-label="State1" style="">
          <div id="u530_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u531" class="ax_default line">
              <img id="u531_img" class="img " src="images/报表管理_新聘员工报表/u531.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u532" class="ax_default _一级标题">
              <div id="u532_div" class=""></div>
              <div id="u532_text" class="text ">
                <p><h6><span>报表管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u533" class="ax_default _二级标题">
              <div id="u533_div" class=""></div>
              <div id="u533_text" class="text ">
                <p><span>新聘员工报表</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u534" class="ax_default label">
              <div id="u534_div" class=""></div>
              <div id="u534_text" class="text ">
                <p><span>开始日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u535" class="ax_default label">
              <div id="u535_div" class=""></div>
              <div id="u535_text" class="text ">
                <p><span>结束日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u536" class="ax_default text_field">
              <input id="u536_input" type="date" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u537" class="ax_default text_field">
              <input id="u537_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u538" class="ax_default button">
              <div id="u538_div" class=""></div>
              <div id="u538_text" class="text ">
                <p><span>生成报表</span></p>
              </div>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u539" class="ax_default line">
              <img id="u539_img" class="img " src="images/报表管理_新聘员工报表/u531.png"/>
            </div>

            <!-- Unnamed (表格) -->
            <div id="u540" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u541" class="ax_default table_cell">
                <img id="u541_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u541_text" class="text ">
                  <p><span>序号</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u542" class="ax_default table_cell">
                <img id="u542_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u542_text" class="text ">
                  <p><span>部门名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u543" class="ax_default table_cell">
                <img id="u543_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u543_text" class="text ">
                  <p><span>岗位名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u544" class="ax_default table_cell">
                <img id="u544_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u544_text" class="text ">
                  <p><span>姓名</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u545" class="ax_default table_cell">
                <img id="u545_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u545_text" class="text ">
                  <p><span>性别</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u546" class="ax_default table_cell">
                <img id="u546_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u546_text" class="text ">
                  <p><span>入职日期</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u547" class="ax_default table_cell">
                <img id="u547_img" class="img " src="images/离职管理/u247.png"/>
                <div id="u547_text" class="text ">
                  <p><span>学历</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u548" class="ax_default table_cell">
                <img id="u548_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u549" class="ax_default table_cell">
                <img id="u549_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u550" class="ax_default table_cell">
                <img id="u550_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u551" class="ax_default table_cell">
                <img id="u551_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u552" class="ax_default table_cell">
                <img id="u552_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u553" class="ax_default table_cell">
                <img id="u553_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u554" class="ax_default table_cell">
                <img id="u554_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u555" class="ax_default table_cell">
                <img id="u555_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u556" class="ax_default table_cell">
                <img id="u556_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u557" class="ax_default table_cell">
                <img id="u557_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u558" class="ax_default table_cell">
                <img id="u558_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u559" class="ax_default table_cell">
                <img id="u559_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u560" class="ax_default table_cell">
                <img id="u560_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u561" class="ax_default table_cell">
                <img id="u561_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u562" class="ax_default table_cell">
                <img id="u562_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u563" class="ax_default table_cell">
                <img id="u563_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u564" class="ax_default table_cell">
                <img id="u564_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u565" class="ax_default table_cell">
                <img id="u565_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u566" class="ax_default table_cell">
                <img id="u566_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u567" class="ax_default table_cell">
                <img id="u567_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u568" class="ax_default table_cell">
                <img id="u568_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u569" class="ax_default table_cell">
                <img id="u569_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u570" class="ax_default table_cell">
                <img id="u570_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u571" class="ax_default table_cell">
                <img id="u571_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u572" class="ax_default table_cell">
                <img id="u572_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u573" class="ax_default table_cell">
                <img id="u573_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u574" class="ax_default table_cell">
                <img id="u574_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u575" class="ax_default table_cell">
                <img id="u575_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u576" class="ax_default table_cell">
                <img id="u576_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u577" class="ax_default table_cell">
                <img id="u577_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u578" class="ax_default table_cell">
                <img id="u578_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u579" class="ax_default table_cell">
                <img id="u579_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u580" class="ax_default table_cell">
                <img id="u580_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u581" class="ax_default table_cell">
                <img id="u581_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u582" class="ax_default table_cell">
                <img id="u582_img" class="img " src="images/离职管理/u292.png"/>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u583" class="ax_default button">
              <div id="u583_div" class=""></div>
              <div id="u583_text" class="text ">
                <p><span>上一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u584" class="ax_default button">
              <div id="u584_div" class=""></div>
              <div id="u584_text" class="text ">
                <p><span>下一页</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!--新聘员工报表-->
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

