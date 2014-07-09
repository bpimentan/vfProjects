<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0" name="viewport">
	<title>${param.title}</title>
	<script>
        (function() {
            var html = document.documentElement;
            html.className = html.className.replace('no-js','js');
        })();
    </script>
    
    <script src="resources/core/assets/js/lib/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="resources/core/assets/touchswipe/jquery.touchSwipe.min.js" type="text/javascript"></script>
    <!--  -->
    <link rel="stylesheet" href="resources/core/assets/menu/slider.css">
	<script type="text/javascript" src="resources/core/assets/menu/slider.js""></script>
    <!-- **************** -->  
    <script src="resources/core/assets/js/core.min.js" type="text/javascript"></script>
	<script src="resources/core/assets/local/local.js" type="text/javascript"></script>   
	<!--  ********* Styles ********** -->
    <link rel="stylesheet" href="resources/core/assets/mobilecss/mobile.css" type="text/css">
    <link rel="stylesheet" href="resources/core/assets/css/core.css" type="text/css">
    <!--[if IE]><link rel="stylesheet" href="resources/core/assets/css/core.ie.css"><![endif]-->
	<link rel="stylesheet" href="resources/core/assets/local/local.css" type="text/css">
    <!--[if gt IE 7]><script src="resources/core/assets/js/lib/respond.min.js"></script><![endif]-->
    <!--  *********  ********** -->      
</head>
<!--[if lt IE 7]>      <body class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <body class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <body class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <body id="page" class="content"> <!--<![endif]-->

	
<div id="page">
	<div id="slider">
		<ul id="menu" class="menu">
			<li class="darkLI selected"><a id="reload" datatitle="Home"
				href="${pageContext.request.contextPath}/MobileHome">Files</a></li>
			<li class="softLI"><a id="index" datatitle="Survey Test"
				href="${pageContext.request.contextPath}/SurveyTest" >Live SLs</a></li>
			<li class="softLI">
				<a id="logOut"
				href="${pageContext.request.contextPath}/logOut"><strong>Log Out</strong></a></li>	
		</ul>
	</div>
	<div id="closeSlider"></div>
	
	<div class="content" id="content">
		<div class="header">
			<table>
				<tr>
					<td width="20%" class="trHeader">
						<div id="toggleMenu" class="toggleMenu"></div>
						<div id="trigger"></div>	
					</td>
					<td align="center" valign="middle"><h2 align="center" id="title">${param.title}</h2></td>
					<td align="left" width="85"><img src="resources/core/assets/img/vodafone_logo.png" width="87" height="47" align="right"></td>
				</tr>
			</table>
		</div>
		<div class="content" style="padding-left:15px;">
			<div id="app-content">
				<div id="toggle">
				
				<c:import url="/WEB-INF/views/${page}.jsp"></c:import>
					
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
		