<%--
  Created by IntelliJ IDEA.
  User: elina_000
  Date: 5/22/2020
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="create-record.css" %>
</style>

<html>
<%--<style><%@include file="create-record.css"%></style>--%>

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
<%--<table>--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            <label for="firstName">First Name:</label>--%>
<%--        </td>--%>
<%--        <td>--%>
<%--            <input type="text" id="firstName" name="firstName">--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            <label for="lastName">Last Name:</label>--%>
<%--        </td>--%>
<%--        <td>--%>
<%--            <input type="text" id="lastName" name="lastName">--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            <label for="address">Address:</label>--%>
<%--        </td>--%>
<%--        <td>--%>
<%--            <textarea type="text" id="address" name="address"></textarea>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <td>--%>
<%--            <button type="submit">Create</button>--%>
<%--        </td>--%>
<%--        <td>--%>
<%--            <button type="reset">Clear</button>--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--</table>--%>