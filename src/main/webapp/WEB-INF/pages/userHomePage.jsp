<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<h2>User home page</h2>
<form method="post">
    <label for="email">Email</label><br>
    <input name="email" type="email" id="email" ><br><br>

    <label for="fullName">Full name</label><br>
    <input name="fullName" type="text" size="100" id="fullName" ><br><br>

    <label for="password">Password</label><br>
    <input name="password" type="password" id="password" ><br><br>


    <button type="submit">Submit</button>
</form>
<table>
    <thead>
    <tr>
        <th scope="col">Email</th>
        <th scope="col">Full name</th>
        <th scope="col">Password</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="userdata" items="${userdatas}">
        <tr>
            <td>${userdata.email}</td>
            <td>${userdata.password}</td>
            <td>${userdata.fullName}</td>
                <%--            <td>${user.role}</td>--%>
                <%--            <td><a href="${pageContext.request.contextPath}/showuser?id=${user.id}">Details</a></td>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>