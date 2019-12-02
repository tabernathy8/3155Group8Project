<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${city == null}">
    <h1 class="city">Please enter a location</h1>
</c:if>
    <c:if test ="${city != null}">
        <h1 class = "city">${city}</h1>
        <h2 class = "current"><br>Current Temperature: ${current}&#8457</h2>
        <h3 class = "high">High: ${high}&#8457</h3>
        <h3 class = "low"><br>Low: ${low}&#8457</h3>
        <c:if test = "${weather.equals('Clouds')}">
        <form style="text-align: center;"><input type="image" id = "clear" src="media/overcast.png" alt = "Clouds"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
        <br><br><br><br>
        </c:if>
        <c:if test = "${weather.equals('Rain')}">
            <form style="text-align: center;"><input type="image" id = "clear" src="media/rainy.png" alt = "Rain"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
            <br><br><br><br>
        </c:if>
        <c:if test = "${weather.equals('Snow')}">
            <form style="text-align: center;"><input type="image" name = "action" id = "clear" src="media/snow.png" alt = "Snow"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
            <br><br><br><br>
        </c:if>
        <c:if test = "${weather.equals('Drizzle')}">
            <form style="text-align: center;"><input type="image" name = "action" id = "clear" src="media/drizzle.png" alt = "Drizzle"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
            <br><br><br><br>
        </c:if>    
        <c:if test = "${weather.equals('Thunderstorm')}">
            <form style="text-align: center;"><input type="image" name = "action" id = "clear" src="media/thunder.png" alt = "Thunderstorm"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
            <br><br><br><br>
        </c:if>
        <c:if test = "${weather.equals('Mist')}">
            <form style="text-align: center;"><input type="image" name = "action" id = "clear" src="media/mist.png" alt = "Mist"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
            <br><br><br><br>
        </c:if>    
    </c:if>
            <br><br><br><br><br>

<jsp:include page="footer.jsp"/>