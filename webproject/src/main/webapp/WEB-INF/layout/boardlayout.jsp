<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">

	
	</head>
	<body>
	
 	<!--  -->	 <div>
			<tiles:insertAttribute name="top"></tiles:insertAttribute>
		</div> 
		
		<div>
			<tiles:insertAttribute name="content"></tiles:insertAttribute>	
		</div>
		
		
		
	</body>
</html>