
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<%@include file="manager.html"%>
<style>
    <%@include file="create-record.css" %>
</style>
<br><br>
<% if(request.getAttribute("address")==null){
%>
<head>
    <title>Record not found</title>
</head>
<body>
<h1 class="notFound">Person with name <%=request.getParameter("firstName")%> <%=request.getParameter("lastName")%> not found! </h1>
<%}else {%>
<head>
    <title>Read a Record</title>
</head>
<body>
    <p>First Name: <%=request.getParameter("firstName")%></p>
    <p>Last Name: <%=request.getParameter("lastName")%></p>
    <p>Address: <%=request.getAttribute("address")%></p>
    <div class="back"><a href="/records/list" class="back button">Back</a></div>
<%}%>
</body>
</html>
