<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;subset=cyrillic"
          rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/default.js"></script>
    <title>${PageTitle}</title>
<%--    <title>Title</title>--%>
</head>
<body>
<header>
    <div class="fixed-container" >
        <div id="logo"> <img alt="logo" src="${pageContext.request.contextPath}/img/logo.png"></div>
        <div id="mail-us">
            <div class="contacts">Напишите нам: <br></div>
            <a href="mailto:university@innopolis.ru">university@innopolis.ru</a>
        </div>
        <div id="call-us">
            <div class="contacts">Позвоните нам: <br></div>
            <a href="tel:+78432039253">+7 (843) 203-92-53</a>
        </div>
        <hr>
    </div>
    <div class="fixed-container">
        <div id="toggle" class="toggle" onclick="getActive()">
            <span id="ham"></span>
        </div>
        <nav><ul id="menu" class="menu">
            <li><a href="#" class="checked-a">Личный кабинет</a></li>
            <li><a href="/">Выйти</a></li>
        </ul></nav>
    </div>
</header>
<main>
    <div class="fixed-container">
<%--        <c:import url="${PageBody}"/>--%>
    </div>
</main>
<footer>
    <div class="fixed-container">
        <section class="left-column">
            <h3>Cвяжитесь с нами</h3>

            <ul>
                <li><a href="mailto:university@innopolis.ru">university@innopolis.ru</a></li> <hr>
                <li><a href="mailto:a.evtushenko.stc@innopolis.university">a.evtushenko.stc@innopolis.university</a></li>
                <li><a href="mailto:a.galay.stc@innopolis.university">a.galay.stc@innopolis.university</a></li>
                <li><a href="mailto:k.ushakova.stc@innopolis.university">k.ushakova.stc@innopolis.university</a></li>
                <li><a href="mailto:o.petrov.stc@innopolis.university">o.petrov.stc@innopolis.university</a></li>
            </ul>


            <a id="phone-footer" href="tel:+78432039253">+7 (843) 203-92-53</a>

        </section>
        <section class="next-column">
            <h3>Быстрые ссылки</h3>
            <ul>
                <li><a href="/">&nbsp;&nbsp;Главная</a></li>
                <li><a href="#">&nbsp;&nbsp;Связаться</a></li>
            </ul>
        </section>
    </div>
    <div id="copy">&copy; 2020 CarePortal |STS23 project</div>
</footer>

</body>
</html>

