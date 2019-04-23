<%@page import="com.entity.Department"%>
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
    <link href="files/部门管理_修改部门/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/部门管理_修改部门/data.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
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
     <!-- 修改部门 -->
        
    <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u17" class="ax_default">
        <div id="u17_state0" class="panel_state" data-label="State1" style="">
          <div id="u17_state0_content" class="panel_state_content">

            <!-- Unnamed (水平线) -->
            <div id="u18" class="ax_default line">
              <img id="u18_img" class="img " src="images/部门管理_新建部门/u1.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u19" class="ax_default _一级标题">
              <div id="u19_div" class=""></div>
              <div id="u19_text" class="text ">
                <p><h6><span>部门管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u20" class="ax_default _二级标题">
              <div id="u20_div" class=""></div>
              <div id="u20_text" class="text ">
                <p><span>修改部门</span></p>
              </div>
            </div>
<%
    Department depart=(Department)request.getAttribute("depart");
    String name=" ",tel=" ",fax=" ",describe=" ";
    Date date=new Date();
    int id=0;
    	if(depart!=null){
    		id=depart.getId();
    		if(depart.getName()!=null){
        		name=depart.getName();
        	}
        	if(depart.getFax()!=null){
        		fax=depart.getFax();
        	}
        	if(depart.getTel()!=null){
        		tel=depart.getTel();
        	}
        	if(depart.getDescribe()!=null){
        		describe=depart.getDescribe();
        	}
        	if(depart.getBuild_date()!=null){
        		date=(Date)depart.getBuild_date();
        	}
    	}
%>
	<form  action="../DepartSelectSingleAct"  method="post">
            <!-- Unnamed (矩形) -->
            <div id="u21" class="ax_default label">
              <div id="u21_div" class=""></div>
              <div id="u21_text" class="text ">
                <p><span>部门id：</span></p>
              </div>
            </div>
			
			<!-- Unnamed (文本框) -->
            <div id="u23" class="ax_default text_field">
              <input id="u23_input" name="depart_id" type="text" value="<%=id%>"/>
            </div>
			
			<!-- Unnamed (提交按钮) -->
            <div id="u34" class="ax_default html_button">
              <input id="u34_input" type="submit" value="查询"/>
            </div>
            
    </form>
    
    <form  action="../DepartUpdateAct"  method="post">
			
			<!-- Unnamed (文本框) -->
            <div id="ppu23" class="ax_default text_field">
              <input id="pu23_input" name="depart_id" type="text" style="display:none" value="<%=id%>"/>
            </div>
			
            
            <!-- Unnamed (矩形) -->
            <div id="u22" class="ax_default label">
              <div id="u22_div" class=""></div>
              <div id="u22_text" class="text ">
                <p><span>部门名称：</span></p>
              </div>
            </div>
           

            <!-- Unnamed (文本框) -->
            <div id="u24" class="ax_default text_field">
              <input id="u24_input" name="depart_name" type="text" value="<%=name%>"/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u25" class="ax_default text_field">
              <input id="u25_input" name="depart_tel" type="text" value="<%=tel%>"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u26" class="ax_default label">
              <div id="u26_div" class=""></div>
              <div id="u26_text" class="text ">
                <p><span>电话：</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u27" class="ax_default label">
              <div id="u27_div" class=""></div>
              <div id="u27_text" class="text ">
                <p><span>传真：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u28" class="ax_default text_field">
              <input id="u28_input" name="depart_fax" type="text" value="<%=fax%>"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u29" class="ax_default label">
              <div id="u29_div" class=""></div>
              <div id="u29_text" class="text ">
                <p><span>成立日期：</span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u30" class="ax_default text_field">
              <input id="u30_input" name="build_date" type="date" value="<%=date%>"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u31" class="ax_default label">
              <div id="u31_div" class=""></div>
              <div id="u31_text" class="text ">
                <p><span>描述：</span></p>
              </div>
            </div>

            <!-- Unnamed (多行文本框) -->
            <div id="u33" class="ax_default text_area">
              <textarea id="u33_input" name="depart_describe"><%=describe%></textarea>
            </div>
            
            <!-- Unnamed (提交按钮) -->
            <div id="u32" class="ax_default html_button">
              <input id="u32_input" type="submit" value="修改部门"/>
            </div>
</form>

            <!-- Unnamed (水平线) -->
            <div id="u35" class="ax_default line">
              <img id="u35_img" class="img " src="images/部门管理_修改部门/u35.png"/>
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- 修改部门 -->
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

