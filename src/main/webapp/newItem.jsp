<%--
  Created by IntelliJ IDEA.
  User: Leonardo
  Date: 24/2/2018
  Time: 04:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <firstName>ShoppingCart Application</firstName>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div style="text-align: center;">
    <h1>ShoppingCart Management</h1>
    <h2>
        <a href="listItem">All my Items</a>
    </h2>
</div>
<div align="center">
    <c:if test="${item.name != null}">
    <form action="updateItem" method="post">
        </c:if>
        <c:if test="${item.name == null}">
        <form action="insertItem" method="post">
            </c:if>
            <table bitem="1" cellpadding="5">
                <c:if test="${item.name != null}">
                    <input type="hidden" name="id" value="<c:out value='${item.id}' />"/>
                </c:if>
                <tr>
                    <th>Name</th>
                    <td>
                        <input type="text" name="name" size="45"
                               value="<c:out value='${item.name}' />"
                        />
                    </td>
                </tr>
                <input type="hidden" name="idOrder" value="<c:out value='${idOrder}' />"/>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save"/>
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>
