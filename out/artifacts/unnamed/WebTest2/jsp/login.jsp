<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%
 String path = request.getRequestURI();

    String basePath = request.getScheme() + "://"

            + request.getServerName() + ":" + request.getServerPort()

            + path;
%>
<base href="<%=basePath%>"><!把相对路径改为绝对路径!!!!!!>
<!DOCTYPE html>
<html>
  <head>
  
    <title>登录界面</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/登录界面/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/登录界面/data.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    <style>
    #login {
  border-width:0px;
  position:absolute;
  left:357px;
  top:231px;
  width:179px;
  height:25px;
}
    </style>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (动态面板) -->
      <div id="u849" class="ax_default">
        <div id="u849_state0" class="panel_state" data-label="State1" style="">
          <div id="u849_state0_content" class="panel_state_content">
<form  action="../UsersServlet"  method="post">
            <!-- Unnamed (矩形) -->
            <div id="u850" class="ax_default box_1">
              <div id="u850_div" class=""></div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u851" class="ax_default text_field">
              <input id="u851_input" type="text" name="username" value=""/>
            </div>

            <!-- Unnamed (提交按钮) -->
            <div id="u852" class="ax_default html_button">
              <input id="u852_input" type="submit" value="登录"/>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="login" >
              <input id="u853_input" type="password" name="pwd" value=""/>
            </div>
            
            <!-- Unnamed (矩形) -->
            <div id="u854" class="ax_default box_1">
              <div id="u854_div" class=""></div>
              <div id="u854_text" class="text ">
                <p><span>用户名</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u855" class="ax_default box_1">
              <div id="u855_div" class=""></div>
              <div id="u855_text" class="text ">
                <p><span>密码</span></p>
              </div>
            </div>
            
</form>

            <!-- Unnamed (矩形) -->
            <div id="u856" class="ax_default box_1">
              <div id="u856_div" class=""></div>
              <div id="u856_text" class="text ">
                <p><span>人事管理系统</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
      
    </div>
    
    
  </body>
</html>
