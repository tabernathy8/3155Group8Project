<div class = "navigation">
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <nav>
                <c:if test="${city == null}">
                    <form class = "left" method="get" action= "weather"><input type="submit" value = "Home" name="action"><input type="hidden" value="Charlotte" name="city"/></form>
                </c:if>
                <c:if test="${city != null}">
                    <form class = "left" method="get" action= "weather"><input type="submit" value = "Home" name="action"><input type="hidden" value="${city}" name="city"/></form>
                </c:if>
                <c:if test="${city == null}">
                    <form class = "right" method="get" action="radar"><input type="submit" value = "Radar" name="action"><input type="hidden" value="Charlotte" name="city"/></form>
                </c:if>
                <c:if test="${city != null}">
                    <form class = "right" method="get" action="radar"><input type="submit" value = "Radar" name="action"><input type="hidden" value="${city}" name="city"/></form>
                </c:if>
                <form>           </form>
                <img class = 'logo' src = "media/w49logo.png" alt="logo.png">
                <c:if test="${city == null}">
                    <form class = "right" method="get" action="fiveday"><input type="submit" value = "5 Day Forecast" name="action"><input type="hidden" value="Charlotte" name="city"/></form>
                </c:if>
                <c:if test="${city != null}">
                    <form class = "right" method="get" action="fiveday"><input type="submit" value = "5 Day Forecast" name="action"><input type="hidden" value="${city}" name="city"/></form>
                </c:if>
                    
                <form method = "get" action="weather">Search: <input type="text" name="city" placeholder = "Enter your cities name"><input type="hidden" value="home" name="action"></form>
                
            </nav>
        </div>
    <main>