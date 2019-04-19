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
    <link href="files/报表管理_岗位调动员工报表/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/报表管理_岗位调动员工报表/data.js"></script>
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
     <!-- 岗位调动员工报表 -->
        
     <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u696" class="ax_default">
        <div id="u696_state0" class="panel_state" data-label="State1" style="">
          <div id="u696_state0_content" class="panel_state_content">

            <!-- Unnamed (表格) -->
            <div id="u697" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u698" class="ax_default table_cell">
                <img id="u698_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u698_text" class="text ">
                  <p><span>序号</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u699" class="ax_default table_cell">
                <img id="u699_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u699_text" class="text ">
                  <p><span>部门名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u700" class="ax_default table_cell">
                <img id="u700_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u700_text" class="text ">
                  <p><span>原岗位名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u701" class="ax_default table_cell">
                <img id="u701_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u701_text" class="text ">
                  <p><span>新岗位名称</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u702" class="ax_default table_cell">
                <img id="u702_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u702_text" class="text ">
                  <p><span>姓名</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u703" class="ax_default table_cell">
                <img id="u703_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u703_text" class="text ">
                  <p><span>性别</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u704" class="ax_default table_cell">
                <img id="u704_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u704_text" class="text ">
                  <p><span>调动日期</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u705" class="ax_default table_cell">
                <img id="u705_img" class="img " src="images/部门调动管理_查询/u406.png"/>
                <div id="u705_text" class="text ">
                  <p><span>调动原因</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u706" class="ax_default table_cell">
                <img id="u706_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u707" class="ax_default table_cell">
                <img id="u707_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u708" class="ax_default table_cell">
                <img id="u708_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u709" class="ax_default table_cell">
                <img id="u709_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u710" class="ax_default table_cell">
                <img id="u710_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u711" class="ax_default table_cell">
                <img id="u711_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u712" class="ax_default table_cell">
                <img id="u712_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u713" class="ax_default table_cell">
                <img id="u713_img" class="img " src="images/部门调动管理_查询/u406.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u714" class="ax_default table_cell">
                <img id="u714_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u715" class="ax_default table_cell">
                <img id="u715_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u716" class="ax_default table_cell">
                <img id="u716_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u717" class="ax_default table_cell">
                <img id="u717_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u718" class="ax_default table_cell">
                <img id="u718_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u719" class="ax_default table_cell">
                <img id="u719_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u720" class="ax_default table_cell">
                <img id="u720_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u721" class="ax_default table_cell">
                <img id="u721_img" class="img " src="images/部门调动管理_查询/u422.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u722" class="ax_default table_cell">
                <img id="u722_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u723" class="ax_default table_cell">
                <img id="u723_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u724" class="ax_default table_cell">
                <img id="u724_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u725" class="ax_default table_cell">
                <img id="u725_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u726" class="ax_default table_cell">
                <img id="u726_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u727" class="ax_default table_cell">
                <img id="u727_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u728" class="ax_default table_cell">
                <img id="u728_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u729" class="ax_default table_cell">
                <img id="u729_img" class="img " src="images/部门调动管理_查询/u422.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u730" class="ax_default table_cell">
                <img id="u730_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u731" class="ax_default table_cell">
                <img id="u731_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u732" class="ax_default table_cell">
                <img id="u732_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u733" class="ax_default table_cell">
                <img id="u733_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u734" class="ax_default table_cell">
                <img id="u734_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u735" class="ax_default table_cell">
                <img id="u735_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u736" class="ax_default table_cell">
                <img id="u736_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u737" class="ax_default table_cell">
                <img id="u737_img" class="img " src="images/部门调动管理_查询/u422.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u738" class="ax_default table_cell">
                <img id="u738_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u739" class="ax_default table_cell">
                <img id="u739_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u740" class="ax_default table_cell">
                <img id="u740_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u741" class="ax_default table_cell">
                <img id="u741_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u742" class="ax_default table_cell">
                <img id="u742_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u743" class="ax_default table_cell">
                <img id="u743_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u744" class="ax_default table_cell">
                <img id="u744_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u745" class="ax_default table_cell">
                <img id="u745_img" class="img " src="images/部门调动管理_查询/u438.png"/>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u746" class="ax_default label">
              <div id="u746_div" class=""></div>
              <div id="u746_text" class="text ">
                <p><span>结束日期</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u747" class="ax_default text_field">
              <input id="u747_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u748" class="ax_default label">
              <div id="u748_div" class=""></div>
              <div id="u748_text" class="text ">
                <p><span>开始日期</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u749" class="ax_default text_field">
              <input id="u749_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u750" class="ax_default button">
              <div id="u750_div" class=""></div>
              <div id="u750_text" class="text ">
                <p><span>上一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u751" class="ax_default button">
              <div id="u751_div" class=""></div>
              <div id="u751_text" class="text ">
                <p><span>下一页</span></p>
              </div>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u752" class="ax_default html_button">
              <input id="u752_input" type="submit" value="生成报表"/>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u753" class="ax_default line">
              <img id="u753_img" class="img " src="images/报表管理_岗位调动员工报表/u753.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u754" class="ax_default _一级标题">
              <div id="u754_div" class=""></div>
              <div id="u754_text" class="text ">
                <p><h6><span>报表管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u755" class="ax_default _二级标题">
              <div id="u755_div" class=""></div>
              <div id="u755_text" class="text ">
                <p><span>岗位调动员工报表</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!--岗位调动员工报表-->
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

