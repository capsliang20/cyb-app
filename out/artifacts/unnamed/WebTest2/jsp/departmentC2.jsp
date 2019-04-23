<%@page import="com.entity.ChangeDepartRecord"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
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
    <link href="files/部门调动管理_查询/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/部门调动管理_查询/data.js"></script>
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
     <!-- 部门调动查询 -->
        
     <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u394" class="ax_default">
        <div id="u394_state0" class="panel_state" data-label="State1" style="">
          <div id="u394_state0_content" class="panel_state_content">

<form action="../GetDepartChangeInfoServlet" method="post">
            <!-- Unnamed (提交按钮) -->
            <div id="u397" class="ax_default html_button">
              <input id="u397_input" type="submit" value="查询"/>
            </div>
			
			<!-- Unnamed (矩形) -->
            <div id="u446" class="ax_default label">
              <div id="u446_div" class=""></div>
              <div id="u446_text" class="text ">
                <p><span>员工ID</span></p>
              </div>
            </div>
<input id="pu73_input" name="currentPage" type="text" style="display:none" value="1"/>
            <!-- Unnamed (文本框) -->
            <div id="u447" class="ax_default text_field">
              <input id="u447_input" name="staff_id" type="text" value=""/>
            </div>
</form>
            <!-- Unnamed (表格) -->
            <div id="u398" class="ax_default">

              <!-- Unnamed (单元格) -->
              <div id="u399" class="ax_default table_cell">
                <img id="u399_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u399_text" class="text ">
                  <p><span>员工ID</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u400" class="ax_default table_cell">
                <img id="u400_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u400_text" class="text ">
                  <p><span>员工姓名</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u401" class="ax_default table_cell">
                <img id="u401_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u401_text" class="text ">
                  <p><span>原部门</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u402" class="ax_default table_cell">
                <img id="u402_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u402_text" class="text ">
                  <p><span>新部门</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u403" class="ax_default table_cell">
                <img id="u403_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u403_text" class="text ">
                  <p><span>调动方式</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u404" class="ax_default table_cell">
                <img id="u404_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u404_text" class="text ">
                  <p><span>调动原因</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u405" class="ax_default table_cell">
                <img id="u405_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u405_text" class="text ">
                  <p><span>备注</span></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u406" class="ax_default table_cell">
                <img id="u406_img" class="img " src="images/部门调动管理_查询/u406.png"/>
                <div id="u406_text" class="text ">
                  <p><span>调动日期</span></p>
                </div>
              </div>
<%
//-------------------------------------------------------------------------------------------------------------
%>
<%
if((List<ChangeDepartRecord>)request.getAttribute("list")!=null) {
	String depart_name=(String)request.getAttribute("depart_name");
	List<ChangeDepartRecord> list=(List<ChangeDepartRecord>)request.getAttribute("list");
	if(list.size()>0){	
		int totalNum=list.size();
		int pageSize=4;
		int currentPage=1;
		if(currentPage<1){
			currentPage=1;
		}
		
		String num=(String)request.getAttribute("page");
		if(num!=null){
			currentPage=Integer.parseInt(num);
		}
		if(currentPage<1){
			currentPage=1;
		}
		int totalPage=totalNum/pageSize;
		if(totalNum%pageSize!=0){
			totalPage++;
		}
		
		ChangeDepartRecord staff=null;
//----------------------------------------------------------------------------------------------------------
		if(0<list.size()){
			staff=list.get(0);
			if(staff!=null){
				%>
				<!-- Unnamed (单元格) -->
              <div id="u407" class="ax_default table_cell">
                <img id="u407_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u407_img" class="text">
                <p><%=staff.getStaff_id() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u408" class="ax_default table_cell">
                <img id="u408_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getStaff_name() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u409" class="ax_default table_cell">
                <img id="u409_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getDepart_from()%></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u410" class="ax_default table_cell">
                <img id="u410_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getDepart_to()%></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u411" class="ax_default table_cell">
                <img id="u411_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getChange_type()%></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u412" class="ax_default table_cell">
                <img id="u412_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getReason()%></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u413" class="ax_default table_cell">
                <img id="u413_img" class="img " src="images/部门调动管理_查询/u399.png"/>
                <div id="u408_img" class="text">
                <p><%="无" %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u414" class="ax_default table_cell">
                <img id="u414_img" class="img " src="images/部门调动管理_查询/u406.png"/>
                <div id="u406_img" class="text">
                <p><%=staff.getDate() %></p>
                </div>
              </div>
				<% 
			}
		}else{
			%>
			  <!-- Unnamed (单元格) -->
              <div id="u407" class="ax_default table_cell">
                <img id="u407_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u408" class="ax_default table_cell">
                <img id="u408_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u409" class="ax_default table_cell">
                <img id="u409_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u410" class="ax_default table_cell">
                <img id="u410_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u411" class="ax_default table_cell">
                <img id="u411_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u412" class="ax_default table_cell">
                <img id="u412_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u413" class="ax_default table_cell">
                <img id="u413_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u414" class="ax_default table_cell">
                <img id="u414_img" class="img " src="images/部门调动管理_查询/u406.png"/>
              </div>
			<% 
		}
//------------------------------------------------------------------------------------------------------	
		if(1<list.size()){
			staff=list.get(1);
			if(staff!=null){
				%>
			<!-- Unnamed (单元格) -->
              <div id="u415" class="ax_default table_cell">
                <img id="u415_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getStaff_id() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u416" class="ax_default table_cell">
                <img id="u416_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getStaff_name() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u417" class="ax_default table_cell">
                <img id="u417_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getDepart_from() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u418" class="ax_default table_cell">
                <img id="u418_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getDepart_to() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u419" class="ax_default table_cell">
                <img id="u419_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getChange_type() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u420" class="ax_default table_cell">
                <img id="u420_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getReason() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u421" class="ax_default table_cell">
                <img id="u421_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%="无" %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u422" class="ax_default table_cell">
                <img id="u422_img" class="img " src="images/部门调动管理_查询/u422.png"/>
                <div id="u406_img" class="text">
                <p><%=staff.getDate() %></p>
                </div>
              </div>
				<% 
			}
		}else{
			%>
			 <!-- Unnamed (单元格) -->
              <div id="u415" class="ax_default table_cell">
                <img id="u415_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u416" class="ax_default table_cell">
                <img id="u416_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u417" class="ax_default table_cell">
                <img id="u417_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u418" class="ax_default table_cell">
                <img id="u418_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u419" class="ax_default table_cell">
                <img id="u419_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u420" class="ax_default table_cell">
                <img id="u420_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u421" class="ax_default table_cell">
                <img id="u421_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u422" class="ax_default table_cell">
                <img id="u422_img" class="img " src="images/部门调动管理_查询/u422.png"/>
              </div>
			<% 
		}
//------------------------------------------------------------------------------------------------------
		if(2<list.size()){
			staff=list.get(2);
			if(staff!=null){
				%>
				<!-- Unnamed (单元格) -->
              <div id="u423" class="ax_default table_cell">
                <img id="u423_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getStaff_id() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u424" class="ax_default table_cell">
                <img id="u424_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getStaff_name() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u425" class="ax_default table_cell">
                <img id="u425_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getDepart_from() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u426" class="ax_default table_cell">
                <img id="u426_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getDepart_to() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u427" class="ax_default table_cell">
                <img id="u427_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getChange_type() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u428" class="ax_default table_cell">
                <img id="u428_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getReason() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u429" class="ax_default table_cell">
                <img id="u429_img" class="img " src="images/部门调动管理_查询/u415.png"/>
                <div id="u408_img" class="text">
                <p><%="无"%></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u430" class="ax_default table_cell">
                <img id="u430_img" class="img " src="images/部门调动管理_查询/u422.png"/>
                <div id="u406_img" class="text">
                <p><%=staff.getDate() %></p>
                </div>
              </div>
				<% 
			}
		}else{
			%>
			<!-- Unnamed (单元格) -->
              <div id="u423" class="ax_default table_cell">
                <img id="u423_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u424" class="ax_default table_cell">
                <img id="u424_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u425" class="ax_default table_cell">
                <img id="u425_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u426" class="ax_default table_cell">
                <img id="u426_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u427" class="ax_default table_cell">
                <img id="u427_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u428" class="ax_default table_cell">
                <img id="u428_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u429" class="ax_default table_cell">
                <img id="u429_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u430" class="ax_default table_cell">
                <img id="u430_img" class="img " src="images/部门调动管理_查询/u422.png"/>
              </div>
			<% 
		}
//------------------------------------------------------------------------------------------------------
		if(3<list.size()){
			staff=list.get(3);
			if(staff!=null){
				%>
				<!-- Unnamed (单元格) -->
              <div id="u431" class="ax_default table_cell">
                <img id="u431_img" class="img " src="images/部门调动管理_查询/u431.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getStaff_id() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u432" class="ax_default table_cell">
                <img id="u432_img" class="img " src="images/部门调动管理_查询/u431.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getStaff_name() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u433" class="ax_default table_cell">
                <img id="u433_img" class="img " src="images/部门调动管理_查询/u431.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getDepart_from() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u434" class="ax_default table_cell">
                <img id="u434_img" class="img " src="images/部门调动管理_查询/u431.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getDepart_to() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u435" class="ax_default table_cell">
                <img id="u435_img" class="img " src="images/部门调动管理_查询/u431.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getChange_type() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u436" class="ax_default table_cell">
                <img id="u436_img" class="img " src="images/部门调动管理_查询/u431.png"/>
                <div id="u408_img" class="text">
                <p><%=staff.getReason() %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u437" class="ax_default table_cell">
                <img id="u437_img" class="img " src="images/部门调动管理_查询/u431.png"/>
                <div id="u408_img" class="text">
                <p><%="无" %></p>
                </div>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u438" class="ax_default table_cell">
                <img id="u438_img" class="img " src="images/部门调动管理_查询/u438.png"/>
                <div id="u406_img" class="text">
                <p><%=staff.getDate()%></p>
                </div>
              </div>
            </div>
				<% 
			}
		}else{
			%>
		<!-- Unnamed (单元格) -->
              <div id="u431" class="ax_default table_cell">
                <img id="u431_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u432" class="ax_default table_cell">
                <img id="u432_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u433" class="ax_default table_cell">
                <img id="u433_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u434" class="ax_default table_cell">
                <img id="u434_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u435" class="ax_default table_cell">
                <img id="u435_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u436" class="ax_default table_cell">
                <img id="u436_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u437" class="ax_default table_cell">
                <img id="u437_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u438" class="ax_default table_cell">
                <img id="u438_img" class="img " src="images/部门调动管理_查询/u438.png"/>
              </div>
            </div>
			<% 
			}
//------------------------------------------------------------------------------------------------------
	%>
	
   
        <form  action="../GetDepartChangeInfoServlet"  method="post">
                <!-- Unnamed (矩形) -->
            <div id="u443" class="ax_default button">
              <div id="u443_div" class=""></div>
               <input id="u443_div" type="submit" value="上一页"/>
            </div>
			<input  name="staff_id" type="text" style="display:none" value="<%=staff.getStaff_id()%>"/>
			<input  name="currentPage" type="text" style="display:none" value="<%=currentPage-1%>"/>
			<!-- Unnamed (提交按钮) -->
	</form>
<form  action="../GetDepartChangeInfoServlet"  method="post">
            <!-- Unnamed (矩形) -->
            <div id="u444" class="ax_default button">
              <div id="u444_div" class=""></div>
             
                <input id="u444_div" type="submit" value="下一页"/>
             
            </div>
            <input name="staff_id" type="text" style="display:none" value="<%=staff.getStaff_id() %>"/>
			<input name="currentPage" type="text" style="display:none" value="<%=currentPage+1%>"/>       
    </form>
	<% 
	}
}else{
	%>
			
              <!-- Unnamed (单元格) -->
              <div id="u407" class="ax_default table_cell">
                <img id="u407_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u408" class="ax_default table_cell">
                <img id="u408_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u409" class="ax_default table_cell">
                <img id="u409_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u410" class="ax_default table_cell">
                <img id="u410_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u411" class="ax_default table_cell">
                <img id="u411_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u412" class="ax_default table_cell">
                <img id="u412_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u413" class="ax_default table_cell">
                <img id="u413_img" class="img " src="images/部门调动管理_查询/u399.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u414" class="ax_default table_cell">
                <img id="u414_img" class="img " src="images/部门调动管理_查询/u406.png"/>
              </div>
<!-- 1------------------------------------------------------------------------------------------- -->
              <!-- Unnamed (单元格) -->
              <div id="u415" class="ax_default table_cell">
                <img id="u415_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u416" class="ax_default table_cell">
                <img id="u416_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u417" class="ax_default table_cell">
                <img id="u417_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u418" class="ax_default table_cell">
                <img id="u418_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u419" class="ax_default table_cell">
                <img id="u419_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u420" class="ax_default table_cell">
                <img id="u420_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u421" class="ax_default table_cell">
                <img id="u421_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u422" class="ax_default table_cell">
                <img id="u422_img" class="img " src="images/部门调动管理_查询/u422.png"/>
              </div>
<!--2 ------------------------------------------------------------------------------------------- -->
              <!-- Unnamed (单元格) -->
              <div id="u423" class="ax_default table_cell">
                <img id="u423_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u424" class="ax_default table_cell">
                <img id="u424_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u425" class="ax_default table_cell">
                <img id="u425_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u426" class="ax_default table_cell">
                <img id="u426_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u427" class="ax_default table_cell">
                <img id="u427_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u428" class="ax_default table_cell">
                <img id="u428_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u429" class="ax_default table_cell">
                <img id="u429_img" class="img " src="images/部门调动管理_查询/u415.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u430" class="ax_default table_cell">
                <img id="u430_img" class="img " src="images/部门调动管理_查询/u422.png"/>
              </div>
<!--3 ------------------------------------------------------------------------------------------- -->
              <!-- Unnamed (单元格) -->
              <div id="u431" class="ax_default table_cell">
                <img id="u431_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u432" class="ax_default table_cell">
                <img id="u432_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u433" class="ax_default table_cell">
                <img id="u433_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u434" class="ax_default table_cell">
                <img id="u434_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u435" class="ax_default table_cell">
                <img id="u435_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u436" class="ax_default table_cell">
                <img id="u436_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u437" class="ax_default table_cell">
                <img id="u437_img" class="img " src="images/部门调动管理_查询/u431.png"/>
              </div>

              <!-- Unnamed (单元格) -->
              <div id="u438" class="ax_default table_cell">
                <img id="u438_img" class="img " src="images/部门调动管理_查询/u438.png"/>
              </div>
            </div>
            <!-- Unnamed (矩形) -->
            <div id="u443" class="ax_default button">
              <div id="u443_div" class=""></div>
              <div id="u443_text" class="text ">
                <p><span>上一页</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u444" class="ax_default button">
              <div id="u444_div" class=""></div>
              <div id="u444_text" class="text ">
                <p><span>下一页</span></p>
              </div>
            </div>
<% 
}
%>
              

            


            <!-- Unnamed (水平线) -->
            <div id="u448" class="ax_default line">
              <img id="u448_img" class="img " src="images/部门调动管理_查询/u448.png"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u449" class="ax_default _一级标题">
              <div id="u449_div" class=""></div>
              <div id="u449_text" class="text ">
                <p><h6><span>部门调动管理</span></h6></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u450" class="ax_default _二级标题">
              <div id="u450_div" class=""></div>
              <div id="u450_text" class="text ">
                <p><span>部门调动查询</span></p>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
     <!-- 部门调动查询 -->
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

