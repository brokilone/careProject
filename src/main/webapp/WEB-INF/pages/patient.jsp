<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>Личный кабинет пациента</h2>
<br>
<h3>Личные данные</h3>
<table>
    <tr>
        <td>ФИО</td>
        <td>${user.fullName}</td>
    </tr>
    <tr>
        <td>E-mail</td>
        <td>${user.getUsername()}</td>
    </tr>
    <tr>
        <td>Пол</td>
        <c:set var="sex" value="${user.sex}"/>
        <c:set var="MAN" value="MAN"/>
        <c:set var="WOMAN" value="WOMAN"/>
        <c:if test="${sex == MAN}">
            <td>Мужской</td>
        </c:if>
        <c:if test="${sex == WOMAN}">
            <td>Женский</td>
        </c:if>
    </tr>
    <tr>
        <td>Дата регистрации</td>
        <td><fmt:formatDate value="${user.created}" pattern="yyyy-MM-dd"/></td>
    </tr>
</table>
<img src="https://static.kulturologia.ru/files/u27045/270455341.jpg">
<br>

<br><br><br>
