<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="style.css" %>
</style>
<html>
<%@include file="manager.html" %>
<br><br>
<%if (request.getAttribute("address") == null && !((boolean) request.getAttribute("showWarning"))) {%>
<head>
    <title>Record not found</title>
</head>
<h1 class="notFound">Person with name <%=request.getParameter("firstName")%> <%=request.getParameter("lastName")%> not
    found! </h1>

<%} else {%>
<%
    if ((boolean) request.getAttribute("showWarning")) {
%>
<p class="error">Address can't be blank!</p>
<%}%>
<head>
    <title>Update a record</title>
</head>
<body>
<form action="/records/update" method="post">
    <label for="firstName">First Name:</label>
    <input type="text" id="firstName" name="firstName" disabled value="<%=request.getParameter("firstName")%>">

    <label for="lastName">Last Name:</label>
    <input type="text" id="lastName" name="lastName" disabled value="<%=request.getParameter("lastName")%>">

    <label for="address">Address:</label>
    <input type="text" id="address" name="address"/>

    <div class="buttons">
        <button type="submit" class="leftBtn">Update</button>
        <button type="reset" class="rightBtn">Clear</button>
    </div>
</form>
<%}%>
</body>
</html>
