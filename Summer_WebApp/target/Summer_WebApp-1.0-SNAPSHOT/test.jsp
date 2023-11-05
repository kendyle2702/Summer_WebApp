<%--
    Document   : test
    Created on : Nov 5, 2023, 3:56:15 PM
    Author     : Duy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
		<%--<sql:setDataSource driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"--%>
		url="jdbc:sqlserver://LAPTOP-DUY:1433;databaseName=prj_project;user=sa;password=123;encrypt=true;trustServerCertificate=true;"
		var="conn"/>
		<%--<sql:query var="result" dataSource="${conn}">--%>
		<!--SELECT * FROM product-->
		<%--</sql:query>--%>

		<!--<table border="1">-->
		<!-- column headers -->
		<!--<tr>-->
		<%--<c:forEach var="columnName" items="${result.columnNames}">--%>
			<!--<th><c:out value="${columnName}"/></th>-->
		<%--</c:forEach>--%>
		<!--</tr>-->
		<!-- column data -->
		<%--<c:forEach var="row" items="${result.rowsByIndex}">--%>
		<!--<tr>-->
		<%--<c:forEach var="column" items="${row}">--%>
			<!--<td><c:out value="${column}"/></td>-->
		<%--</c:forEach>--%>
		<!--</tr>-->
		<%--</c:forEach>--%>
		<!--</table>-->
		<h1>Hello World!</h1>
	</body>
</html>
