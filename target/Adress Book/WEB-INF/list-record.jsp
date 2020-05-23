<%@ page import="softserve.academy.AddressBook" %>
<%@ page import="java.util.Iterator" %><%--
  Created by IntelliJ IDEA.
  User: elina_000
  Date: 5/22/2020
  Time: 11:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file="create-record.css" %>
</style>
<html>
<head>
    <title>All records</title>
</head>
<body>
<%@include file="manager.html"%>
<br><br>
<%
    AddressBook addressBook = (AddressBook) request.getAttribute("addressBook");
    Iterator<String[]> iterator = addressBook.iterator();
    String[] address;
    int id = 1;
%>
Sort by: <a href="/records/list?sort=asc" class="myLink">asc</a> | <a href="/records/list?sort=desc" class="myLink">des</a>
<br>
<br>
<table>
    <tr>
        <th>No.</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Address</th>
        <th colspan="3" class="operations">Operation</th>
    </tr>
    <%
    while (iterator.hasNext()){
        address = iterator.next();
    %>
    <tr class="record">
        <td><%=id++%></td>
        <td><%=address[0]%></td>
        <td><%=address[1]%></td>
        <td><%=address[2]%></td>
        <td class="operations">
            <a href="/records/read?firstName=<%=address[0]%>&lastName=<%=address[1]%>" class="myLink">Read</a>
        </td>
        <td class="operations">
            <a href="/records/update?firstName=<%=address[0]%>&lastName=<%=address[1]%>" class="myLink">Reset</a>
        </td>
        <td class="operations">
            <a href="/records/delete?firstName=<%=address[0]%>&lastName=<%=address[1]%>" class="myLink">Delete</a>
        </td>
    </tr>
    <%}%>

</table>
</body>
</html>
