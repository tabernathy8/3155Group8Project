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
        <form style="text-align: center;"><input type="image" id = "clear" src="media/overcast.png" alt = "overcast.png"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
        </c:if>
        <c:if test = "${weather.equals('Rain')}">
            <form style="text-align: center;"><input type="image" id = "clear" src="media/rainy.png" alt = "rainy.png"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
        </c:if>
        <c:if test = "${weather.equals('Clear')}">
            <form style="text-align: center;"><input type="image" name = "action" id = "clear" src="media/thunder.png" alt = "Clear.png"  width = 250  height = 250><input type="hidden" value="See More" name="action"/></form>
        </c:if>
        
    </c:if>

<jsp:include page="footer.jsp"/>