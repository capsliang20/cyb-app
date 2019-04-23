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
    <link href="files/入职管理/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/入职管理/data.js"></script>
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
     <!-- 入职管理 -->
        
   <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u143" class="ax_default">
        <div id="u143_state0" class="panel_state" data-label="State1" style="">
          <div id="u143_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u144" class="ax_default line">
              <img id="u144_img" class="img " src="images/部门管理_新建部门/u1.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u145" class="ax_default _一级标题">
              <div id="u145_div" class=""></div>
              <div id="u145_text" class="text ">
                <p><h6><span>入职管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u146" class="ax_default _二级标题">
              <div id="u146_div" class=""></div>
              <div id="u146_text" class="text ">
                <p><span>基本信息</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u147" class="ax_default label">
              <div id="u147_div" class=""></div>
              <div id="u147_text" class="text ">
                <p><span>员工号：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u148" class="ax_default label">
              <div id="u148_div" class=""></div>
              <div id="u148_text" class="text ">
                <p><span>员工姓名：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u149" class="ax_default text_field">
              <input id="u149_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u150" class="ax_default text_field">
              <input id="u150_input" type="text" value=""/>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u151" class="ax_default html_button">
              <input id="u151_input" type="submit" value="提交"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u152" class="ax_default label">
              <div id="u152_div" class=""></div>
              <div id="u152_text" class="text ">
                <p><span>性别：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u153" class="ax_default label">
              <div id="u153_div" class=""></div>
              <div id="u153_text" class="text ">
                <p><span>出生日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u154" class="ax_default text_field">
              <input id="u154_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u155" class="ax_default text_field">
              <input id="u155_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u156" class="ax_default label">
              <div id="u156_div" class=""></div>
              <div id="u156_text" class="text ">
                <p><span>身份证号：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u157" class="ax_default text_field">
              <input id="u157_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u158" class="ax_default label">
              <div id="u158_div" class=""></div>
              <div id="u158_text" class="text ">
                <p><span>入职日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u159" class="ax_default label">
              <div id="u159_div" class=""></div>
              <div id="u159_text" class="text ">
                <p><span>参加工作日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u160" class="ax_default text_field">
              <input id="u160_input" type="date" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u161" class="ax_default text_field">
              <input id="u161_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u162" class="ax_default label">
              <div id="u162_div" class=""></div>
              <div id="u162_text" class="text ">
                <p><span>用工形式：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u163" class="ax_default label">
              <div id="u163_div" class=""></div>
              <div id="u163_text" class="text ">
                <p><span>人员来源：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u164" class="ax_default label">
              <div id="u164_div" class=""></div>
              <div id="u164_text" class="text ">
                <p><span>政治面貌：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u165" class="ax_default text_field">
              <input id="u165_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u166" class="ax_default text_field">
              <input id="u166_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u167" class="ax_default label">
              <div id="u167_div" class=""></div>
              <div id="u167_text" class="text ">
                <p><span>民族：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u168" class="ax_default label">
              <div id="u168_div" class=""></div>
              <div id="u168_text" class="text ">
                <p><span>籍贯：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u169" class="ax_default text_field">
              <input id="u169_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u170" class="ax_default text_field">
              <input id="u170_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u171" class="ax_default label">
              <div id="u171_div" class=""></div>
              <div id="u171_text" class="text ">
                <p><span>出生地：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u172" class="ax_default text_field">
              <input id="u172_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u173" class="ax_default label">
              <div id="u173_div" class=""></div>
              <div id="u173_text" class="text ">
                <p><span>户口所在的地：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u174" class="ax_default text_field">
              <input id="u174_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u175" class="ax_default label">
              <div id="u175_div" class=""></div>
              <div id="u175_text" class="text ">
                <p><span>联系电话：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u176" class="ax_default label">
              <div id="u176_div" class=""></div>
              <div id="u176_text" class="text ">
                <p><span>电子邮件：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u177" class="ax_default text_field">
              <input id="u177_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u178" class="ax_default text_field">
              <input id="u178_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u179" class="ax_default label">
              <div id="u179_div" class=""></div>
              <div id="u179_text" class="text ">
                <p><span>身高：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u180" class="ax_default label">
              <div id="u180_div" class=""></div>
              <div id="u180_text" class="text ">
                <p><span>血型：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u181" class="ax_default text_field">
              <input id="u181_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u182" class="ax_default text_field">
              <input id="u182_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u183" class="ax_default label">
              <div id="u183_div" class=""></div>
              <div id="u183_text" class="text ">
                <p><span>最高学历：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u184" class="ax_default label">
              <div id="u184_div" class=""></div>
              <div id="u184_text" class="text ">
                <p><span>最高学位：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u185" class="ax_default text_field">
              <input id="u185_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u186" class="ax_default text_field">
              <input id="u186_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u187" class="ax_default label">
              <div id="u187_div" class=""></div>
              <div id="u187_text" class="text ">
                <p><span>毕业院校：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u188" class="ax_default label">
              <div id="u188_div" class=""></div>
              <div id="u188_text" class="text ">
                <p><span>专业：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u189" class="ax_default text_field">
              <input id="u189_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u190" class="ax_default text_field">
              <input id="u190_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u191" class="ax_default label">
              <div id="u191_div" class=""></div>
              <div id="u191_text" class="text ">
                <p><span>岗位：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u192" class="ax_default label">
              <div id="u192_div" class=""></div>
              <div id="u192_text" class="text ">
                <p><span>部门：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u193" class="ax_default text_field">
              <input id="u193_input" type="text" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u194" class="ax_default text_field">
              <input id="u194_input" type="text" value=""/>
            </div>

            <!-- Unnamed (水平线) -->
            <div id="u195" class="ax_default line">
              <img id="u195_img" class="img " src="images/部门管理_新建部门/u1.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u196" class="ax_default _二级标题">
              <div id="u196_div" class=""></div>
              <div id="u196_text" class="text ">
                <p><span>试用期</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u197" class="ax_default label">
              <div id="u197_div" class=""></div>
              <div id="u197_text" class="text ">
                <p><span>开始日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u198" class="ax_default label">
              <div id="u198_div" class=""></div>
              <div id="u198_text" class="text ">
                <p><span>结束日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u199" class="ax_default text_field">
              <input id="u199_input" type="date" value=""/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u200" class="ax_default text_field">
              <input id="u200_input" type="date" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u201" class="ax_default label">
              <div id="u201_div" class=""></div>
              <div id="u201_text" class="text ">
                <p><span>婚姻状况：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u202" class="ax_default text_field">
              <input id="u202_input" type="text" value=""/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u203" class="ax_default label">
              <div id="u203_div" class=""></div>
              <div id="u203_text" class="text ">
                <p><span>毕业日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u204" class="ax_default text_field">
              <input id="u204_input" type="date" value=""/>
            </div>

            <!-- Unnamed (下拉列表框) -->
            <div id="u205" class="ax_default droplist">
              <select id="u205_input">
              </select>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- 入职管理 -->
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

