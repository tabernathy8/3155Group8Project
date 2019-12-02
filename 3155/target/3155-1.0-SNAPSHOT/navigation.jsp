    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <div class ="topnav" id = "myTopnav">
                <form method = "get" action = "weather"><img class = 'logo' src = "media/w49logo.png" alt="logo.png"></form>
                <c:if test="${city == null}">
                    <form class = "active" method="get" action= "weather"><input type="submit" value = "Home" name="action"><input type="hidden" value="Charlotte" name="city"/></form>
                </c:if>
                <c:if test="${city != null}">
                        <form class = "active" method="get" action= "weather"><input type="submit" value = "Home" name="action"><input type="hidden" value="${city}" name="city"/></form>
                </c:if>
                <c:if test="${city == null}">
                <form method="get" action="radar"><input type="submit" value = "Radar" name="action"><input type="hidden" value="Charlotte" name="city"/></form>
                </c:if>
                <c:if test="${city != null}">
                <form method="get" action="radar"><input type="submit" value = "Radar" name="action"><input type="hidden" value="${city}" name="city"/></form>
                </c:if>
                <c:if test="${city == null}">
                    <form method="get" action="fiveday"><input type="submit" value = "5 Day Forecast" name="action"><input type="hidden" value="Charlotte" name="city"/></form>
                </c:if>
                <c:if test="${city != null}">
                <form method="get" action="fiveday"><input type="submit" value = "5 Day Forecast" name="action"><input type="hidden" value="${city}" name="city"/></form>
                </c:if>
                <form class = "right" method = "get" action="weather"><input type="text" name="city" placeholder = "Enter your cities name"><input type="hidden" value="home" name="action"></form>
                <form onclick ="myFunction()" action="javascript:void(0);" class="icon">
                    <i class="fa fa-bars"></i>
                </form>
            </div>
            
            
    <main>