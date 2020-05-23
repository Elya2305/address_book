<%--
  Created by IntelliJ IDEA.
  User: elina_000
  Date: 5/22/2020
  Time: 2:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="create-record.css" %>
</style>
<html>

<%@include file="manager.html"%>
<br><br>
<%if(request.getAttribute("address")==null){%>
<head>
    <title>Record not found</title>
</head>
<h1 class="notFound">Person with name <%=request.getParameter("firstName")%> <%=request.getParameter("lastName")%> not found! </h1>

<%}else {%>

<head>
    <title>Update a record</title>
</head>
<body>
<form action="/records/update" method="post" style="{}">
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
<%--<form action="/records/update" method="post">--%>
<%--    <table class="updateForm">--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <label for="firstName">First Name:</label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <input type="text" id="firstName" name="firstName" value="<%=request.getParameter("firstName")%>" disabled>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <label for="lastName" >Last Name:</label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <input type="text" id="lastName" name="lastName" value="<%=request.getParameter("lastName")%>" disabled>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <label for="address">Address:</label>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <input type="text" id="address" name="address" value="<%=request.getAttribute("address")%>">--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <button type="submit">Update</button>--%>
<%--            </td>--%>
<%--            <td>--%>
<%--                <button type="reset">Clear</button>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</form>--%>