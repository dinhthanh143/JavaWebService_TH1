<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/7/2026
  Time: 1:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>employee</title>
</head>
<body>
<h1>Danh sách nhân viên</h1>
<table border="1" cellspacing="0" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Họ và tên</th>
        <th>Phòng ban</th>
        <th>Lương</th>
        <th>Đánh giá</th>
    </tr>
    <c:forEach items="${employees}" var="employee" varStatus="loop">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.fullName}</td>
            <td>${employee.department}</td>
            <td>${employee.salary}</td>
            <c:if test="${employee.salary >= 10000}">
                <td>Mức lương
                    cao</td>
            </c:if>

            <c:if test="${employee.salary < 10000}">
                <td>Mức lương cơ bản</td>
            </c:if>
        </tr>
    </c:forEach>
</table>

</body>
</html>
