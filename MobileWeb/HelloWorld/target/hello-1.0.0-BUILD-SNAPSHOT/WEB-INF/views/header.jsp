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
    
    <!--  Testing ZONE -->
    <script src="resources/core/assets/touchswipe/jquery.touchSwipe.min.js" type="text/javascript"></script>
   	<script src="resources/core/assets/mmenu/js/jquery.mmenu.min.all.js" type="text/javascript"></script>
   	<link href="resources/core/assets/mmenu/css/jquery.mmenu.all.css" type="text/css" rel="stylesheet" />
    <!-- **************** -->
    
    <!-- <script src="resources/core/assets/menu/jquery.sidr.min.js" type="text/javascript"></script> -->
    <script src="resources/core/assets/js/core.min.js" type="text/javascript"></script>
    <!-- <script src="resources/core/assets/menu/jquery.touchwipe.js" type="text/javascript"></script>  -->  
	<script src="resources/core/assets/local/local.js" type="text/javascript"></script>
    
	<!-- <link rel="stylesheet" href="resources/core/assets/menu/stylesheets/jquery.sidr.dark.css"> -->
    <link rel="stylesheet" href="resources/core/assets/mobilecss/mobile.css" type="text/css">
    <link rel="stylesheet" href="resources/core/assets/css/core.css" type="text/css">
    <!--[if IE]><link rel="stylesheet" href="resources/core/assets/css/core.ie.css"><![endif]-->
	<link rel="stylesheet" href="resources/core/assets/local/local.css" type="text/css">
    <!--[if gt IE 7]><script src="resources/core/assets/js/lib/respond.min.js"></script><![endif]-->
    
    
    
</head>
<!--[if lt IE 7]>      <body class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <body class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <body class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <body id="page" class="content"> <!--<![endif]-->
	
	<!--  <div id="sidr">
		My Content
	  <ul>
	    <li><a href="#">List 1</a></li>
	    <li class="active"><a href="#">List 2</a></li>
	    <li><a href="#">List 3</a></li>
	  </ul>
	</div> --> 
	
	
	<div id="page">
		<nav id="my-menu">
		   <ul>
		      <li><a href="<c:url value='/MobileHome'/>">Home</a></li>
		      <li><a href="<c:url value='/SurveyTest'/>">SurveyTest</a></li>
		      <li>
		         <a href="#">About us</a>
		         <ul>
		            <li><a href="#">History</a></li>
		            <li><a href="#">The team</a></li>
		            <li><a href="#">Our address</a></li>
		         </ul>
		      </li>
		      <li><a href="#">Contact</a></li>
		   </ul>
		</nav>
		<div class="header">
			<table>
				<tr>
					<td width="20%" class="trHeader">
						<!--  <a id="simple-menu" href="#simple-menu" class="nv-menu nav-trigger" style="padding:10px;"> -->
						<a id="simple-menu" href="#my-menu" class="nv-menu nav-trigger" style="padding:10px;">
							<span class="access">show </span>
							<span class="access"> Menu</span>
							<i class="i-menu"></i>
						</a>
					</td>
					<td align="center" valign="middle"><h2 align="center">${param.title}</h2></td>
					<td align="left" width="85"><img src="resources/core/assets/img/vodafone_logo.png" width="87" height="47" align="right"></td>
				</tr>
			</table>
		</div>
		<div class="content" style="padding-left:15px;">
	
	<!-- TESTING MENU -->
	
	
	
	<!-- ************ -->
