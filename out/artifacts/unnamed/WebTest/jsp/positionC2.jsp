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
    <link href="files/岗位调动管理_查询/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/岗位调动管理_查询/data.js"></script>
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
     <!-- 岗位调动查询 -->
        
     <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u479" class="ax_default">
        <div id="u479_state0" class="panel_state" data-label="State1" style="">
          <div id="u479_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u480" class="ax_default line">
              <img id="u480_img" class="img " src="images/岗位调动管理_查询/u480.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u481" class="ax_default _一级标题">
              <div id="u481_div" class=""></div>
              <div id="u481_text" class="text ">
                <p><h6><span>岗位调动管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u482" class="ax_default _二级标题">
              <div id="u482_div" class=""></div>
              <div id="u482_text" class="text ">
                <p><span>查询员工</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u483" class="ax_default label">
              <div id="u483_div" class=""></div>
              <div id="u483_text" class="text ">
                <p><span>开始日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u484" class="ax_default label">
              <div id="u484_div" class=""></div>
              <div id="u484_text" class="text ">
                <p><span>结束日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u485" class="ax_default text_field">
              <input id="u485_input" type="date" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u486" class="ax_default text_field">
              <input id="u486_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u487" class="ax_default label">
              <div id="u487_div" class=""></div>
              <div id="u487_text" class="text ">
                <p><span>调动方式：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u488" class="ax_default label">
              <div id="u488_div" class=""></div>
              <div id="u488_text" class="text ">
                <p><span>员工编号：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u489" class="ax_default text_field">
              <input id="u489_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u490" class="ax_default label">
              <div id="u490_div" class=""></div>
              <div id="u490_text" class="text ">
                <p><span>员工姓名：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u491" class="ax_default text_field">
              <input id="u491_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u492" class="ax_default button">
              <div id="u492_div" class=""></div>
              <div id="u492_text" class="text ">
                <p><span>查询</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u493" class="ax_default button">
              <div id="u493_div" class=""></div>
              <div id="u493_text" class="text ">
                <p><span>重置</span></p>
              </div>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u494" class="ax_default line">
              <img id="u494_img" class="img " src="images/岗位调动管理_查询/u480.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u495" class="ax_default _二级标题">
              <div id="u495_div" class=""></div>
              <div id="u495_text" class="text ">
                <p><span>已调动员工信息</span></p>
              </div>
            </div>

            <!-- Unnamed (表格) -->
            <div id="u496" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u497" class="ax_default table_cell">
                <img id="u497_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u497_text" class="text ">
                  <p><span>员工编号</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u498" class="ax_default table_cell">
                <img id="u498_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u498_text" class="text ">
                  <p><span>员工姓名</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u499" class="ax_default table_cell">
                <img id="u499_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u499_text" class="text ">
                  <p><span>原岗位</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u500" class="ax_default table_cell">
                <img id="u500_img" class="img " src="images/离职管理/u239.png"/>
                <div id="u500_text" class="text ">
                  <p><span>新岗位</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u501" class="ax_default table_cell">
                <img id="u501_img" class="img " src="images/离职管理/u247.png"/>
                <div id="u501_text" class="text ">
                  <p><span>调动日期</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u502" class="ax_default table_cell">
                <img id="u502_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u503" class="ax_default table_cell">
                <img id="u503_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u504" class="ax_default table_cell">
                <img id="u504_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u505" class="ax_default table_cell">
                <img id="u505_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u506" class="ax_default table_cell">
                <img id="u506_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u507" class="ax_default table_cell">
                <img id="u507_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u508" class="ax_default table_cell">
                <img id="u508_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u509" class="ax_default table_cell">
                <img id="u509_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u510" class="ax_default table_cell">
                <img id="u510_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u511" class="ax_default table_cell">
                <img id="u511_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u512" class="ax_default table_cell">
                <img id="u512_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u513" class="ax_default table_cell">
                <img id="u513_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u514" class="ax_default table_cell">
                <img id="u514_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u515" class="ax_default table_cell">
                <img id="u515_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u516" class="ax_default table_cell">
                <img id="u516_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u517" class="ax_default table_cell">
                <img id="u517_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u518" class="ax_default table_cell">
                <img id="u518_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u519" class="ax_default table_cell">
                <img id="u519_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u520" class="ax_default table_cell">
                <img id="u520_img" class="img " src="images/离职管理/u239.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u521" class="ax_default table_cell">
                <img id="u521_img" class="img " src="images/离职管理/u247.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u522" class="ax_default table_cell">
                <img id="u522_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u523" class="ax_default table_cell">
                <img id="u523_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u524" class="ax_default table_cell">
                <img id="u524_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u525" class="ax_default table_cell">
                <img id="u525_img" class="img " src="images/离职管理/u284.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u526" class="ax_default table_cell">
                <img id="u526_img" class="img " src="images/离职管理/u292.png"/>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u527" class="ax_default button">
              <div id="u527_div" class=""></div>
              <div id="u527_text" class="text ">
                <p><span>上一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u528" class="ax_default button">
              <div id="u528_div" class=""></div>
              <div id="u528_text" class="text ">
                <p><span>下一页</span></p>
              </div>
            </div>

            <!-- Unnamed (下拉列表框) -->
            <div id="u529" class="ax_default droplist">
              <select id="u529_input">
              </select>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- 岗位调动查询-->
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

