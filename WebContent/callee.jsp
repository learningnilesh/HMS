<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
<html>

<head>
	<title>Java Code Geeks Snippets - Pass Parameters to other JSP Page</title>
</head>

<body>

	This is the callee JSP page.
	
	param1: <%= request.getParameter("param1") %>
	param2: <%= request.getParameter("param2") %>

</body>