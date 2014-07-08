<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
	<meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0" name="viewport">
	<title>Login</title>
	<style>
		.error{
		color: white; font-wight: bold; background: none !important;
		}
		.titleLogin{
		color: white;
		text-align: left;
		padding: 10px;
		}
		table, th, tr, td {
		border: none !important;
		padding: 5px !important;
		background-color: transparent !important;
		text-align: left !important;
		font: 400 22px/1.158 "VodafoneRegular";
		}
	</style>
	<script>
        (function() {
            var html = document.documentElement;
            html.className = html.className.replace('no-js','js');
        })();
    </script>
    <link rel="stylesheet" href="resources/core/assets/css/core.css">
    <!--[if IE]><link rel="stylesheet" href="resources/core/assets/css/core.ie.css"><![endif]-->
	<link rel="stylesheet" href="resources/core/assets/local/local.css">
    <!--[if gt IE 7]><script src="resources/core/assets/js/lib/respond.min.js"></script><![endif]-->
</head>
<!--[if lt IE 7]>      <body class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <body class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <body class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <body style="background-color:#e60000 !important;"> <!--<![endif]-->
	<div align="center">
        <h2 class="titleLogin">Login Form</h2>
        <form:form action="LoginSuccess" commandName="userForm" class="mod mod-form tg-body">
        	<fieldset>
                <div class="fm-data" style="width:80%;">
                	<table>
	                    <tr>
	                    	<td>User</td>
		                    <td>
			                    <form:input path="email" size="30"/>
			                    <form:errors path="email" cssClass="error"/>
		                    </td>
	                    </tr>   
                </div>
                <div class="fm-data">                  
	                    <tr>
	                    	<td>Password</td>
	                    	<td>
			                    <form:password path="password" size="30" class="fm-required"/>
			                    <form:errors path="password" cssClass="error"/>
                    		</td>
	                    </tr>

                </div>
                <div class="fm-submit">
                	<tr>
                		<td></td>
                		<td>
                 			<input type="submit" value="Login" class="btn btn-alt btn-sml" style="width:150px;"/>
                 		</td>
                 	</tr>
                  </table>
                </div>
        	</fieldset>
        </form:form>
    </div>
</body>
</html>