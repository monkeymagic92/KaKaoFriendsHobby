<%--
  Created by IntelliJ IDEA.
  User: Jaee
  Date: 2021-06-07
  Time: 오후 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>UserTest</title>
</head>
<body>
    ${test}
    <br>
    Index!!
    <div>
        <c:forEach items="${list}" var="item">
            <div>${item.i_board}</div>
            <div>${item.n}</div>
            <div>${item.title}</div>
            <div>${item.cntn}</div>
        </c:forEach>
    </div>
</body>
</html>
