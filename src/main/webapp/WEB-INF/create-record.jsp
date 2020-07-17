<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="style.css" %>
</style>
<html>
<head>
    <title>Create new Record</title>
</head>
<body>
<%@include file="manager.html" %>

<br>
<%
    if ((boolean) request.getAttribute("showWarning")) {
%>
<p class="error">Something went wrong... Please try again</p>
<%}%>
<div>
    <form action="/records/create" method="post" style="{}">
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName">

        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName">

        <label for="address">Address:</label>
        <input type="text" id="address" name="address"/>

        <div class="buttons">
            <button type="submit">Create</button>
            <button type="reset" class="rightBtn">Clear</button>
        </div>
    </form>
</div>
</body>
</html>
