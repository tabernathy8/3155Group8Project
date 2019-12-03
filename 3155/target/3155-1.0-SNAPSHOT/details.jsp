<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="details">
    <h1>${city}</h1>
    <p>Current Temperature: ${current}&#8457</p>
    <p>High: ${high}&#8457</p>
    <p>Low: ${low}&#8457</p>
    <p>Sunrise: ${sunUp}</p>
    <p>Sunset ${sunDown}</p>
    <p>Humidity:  ${humidity}%</p>
    <p>Humidity:  ${pressure} hpa</p>
    <p>Weather: ${weatherDescription}</p>
    <p>Wind Speed: ${wind.getSpeed()} ${wind.getUnit()}</p>
    <c:if test ="${weather.equals('Rain')}">
        <p>Rain Accumulated over the last 3 Hours: ${rain.getRainVolumeLast3Hrs()}${rain.getUnit()}</p>
    </c:if>
    <c:if test="${weather.equals('Snow')}">
        <p>Snow Accumulated over the last 3 Hours: ${snow.getSnowVolumeLast3Hrs()}${snow.getUnit()}</p>
    </c:if>
    

    
</div>

<jsp:include page="footer.jsp"/>