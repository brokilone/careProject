<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<form:form action="/admin/saveUsersChanges" method="post" modelAttribute="userChangesDto">

    <table>
        <tr>
            <th>Id</th>
            <th>Ф.И.О</th>
            <th>Активирован<br>
                <input type="checkbox" id="checkAll"/></th>
            <th>Email</th>
            <th>Пол</th>
            <th>Роль</th>
            <th>Дата создания</th>
                <%--<th><h5>Профиль</h5></th>--%>
        </tr>
        <c:forEach var="admin" items="${userChangesDto.getUserDtoList()}" varStatus="vsq">
        <tr>
            <td>
                    <form:input path="userDtoList[${vsq.index}].id" value="${user.getId()}"/>
            </td>
            <td><c:out value="${user.getFullName()}"/></td>
            <td>
                <c:if test="${user.isEnabled()}">
                    <form:checkbox path="userDtoList[${vsq.index}].enabled" checked="checked"/>

                </c:if>
                <c:if test="${!user.isEnabled()}">
                    <form:checkbox path="userDtoList[${vsq.index}].enabled"/>
                </c:if>
            </td>
            <td><c:out value="${user.getEmail()}"/></td>
            <td><c:out value="${user.getSex()}"/></td>
            <td><c:out value="${user.getRole()}"/></td>
            <td><c:out value="${user.getCreated()}"/></td>
                <%-- // добавить ссылку на страницу детализации юзера(не на личную) по типу как у ксении--%>
        </tr>

        </c:forEach>

    </table>
    <input type="submit" value="Сохранить изменения">
</form:form>

<c:if test="${list_users.size() < 1}">
    <h3><b>По заданным параметрам никого не найдено!</b></h3>
</c:if>
<br><br><br>
