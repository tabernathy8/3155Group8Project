<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>

    <h1 class = "fiveday">Weather Over the Next Four Days in ${city}</h1>
    <ul>
        
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:forEach var = "i" begin = "0" end = "3">
            <li class = "fiveday">
        <p class = "y">${x.get(i).getDt_txt().substring(0,10)}</p>
        <c:if test = "${x.get(i).getWeatherStates().get(0).getWeatherGroup().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 75 width = 75>
            <c:if test="${lowTemps.get(i) > highTemps.get(i)}">
                <p>High: ${lowTemps.get(i)}&#8457</p>
                <p>Low: ${highTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
            <c:if test = "${lowTemps.get(i) < highTemps.get(i)}">
                <p>High: ${highTemps.get(i)}&#8457</p> 
                <p>   Low: ${lowTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
        </c:if>
        
        <c:if test = "${x.get(i).getWeatherStates().get(0).getWeatherGroup().equals('Clear')}">
            <img class = "micah" src="media/clear.png" alt="clear.png" height = 75 width = 75>
            <c:if test="${lowTemps.get(i) > highTemps.get(i)}">
                <p>High: ${lowTemps.get(i)}&#8457</p>
                <p>Low: ${highTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
            <c:if test = "${lowTemps.get(i) < highTemps.get(i)}">
                <p>High: ${highTemps.get(i)}&#8457</p> 
                <p>   Low: ${lowTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
        </c:if>
        
        <c:if test = "${x.get(i).getWeatherStates().get(0).getWeatherGroup().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 75 width = 75>
            <c:if test="${lowTemps.get(i) > highTemps.get(i)}">
                <p>High: ${lowTemps.get(i)}&#8457</p>
                <p>Low: ${highTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
            <c:if test = "${lowTemps.get(i) < highTemps.get(i)}">
                <p>High: ${highTemps.get(i)}&#8457</p> 
                <p>   Low: ${lowTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
        </c:if>
        <c:if test = "${x.get(i).getWeatherStates().get(0).getWeatherGroup().equals('Thunderstorm')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 75 width = 75>
            <c:if test="${lowTemps.get(i) > highTemps.get(i)}">
                <p>High: ${lowTemps.get(i)}&#8457</p>
                <p>Low: ${highTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
            <c:if test = "${lowTemps.get(i) < highTemps.get(i)}">
                <p>High: ${highTemps.get(i)}&#8457</p> 
                <p>   Low: ${lowTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
        </c:if>
        <c:if test = "${x.get(i).getWeatherStates().get(0).getWeatherGroup().equals('Snow')}">
            <img class = "micah" src="media/snow.png" alt="snow.png" height = 75 width = 75>
            <c:if test="${lowTemps.get(i) > highTemps.get(i)}">
                <p>High: ${lowTemps.get(i)}&#8457</p>
                <p>Low: ${highTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
            <c:if test = "${lowTemps.get(i) < highTemps.get(i)}">
                <p>High: ${highTemps.get(i)}&#8457</p> 
                <p>   Low: ${lowTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
        </c:if>
        <c:if test = "${x.get(i).getWeatherStates().get(0).getWeatherGroup().equals('Drizzle')}">
            <img class = "micah" src="media/drizzle.png" alt="drizzle.png" height = 75 width = 75>
            <c:if test="${lowTemps.get(i) > highTemps.get(i)}">
                <p>High: ${lowTemps.get(i)}&#8457</p>
                <p>Low: ${highTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
            <c:if test = "${lowTemps.get(i) < highTemps.get(i)}">
                <p>High: ${highTemps.get(i)}&#8457</p> 
                <p>   Low: ${lowTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
        </c:if>
        <c:if test = "${x.get(i).getWeatherStates().get(0).getWeatherGroup().equals('Mist')}">
            <img class = "micah" src="media/mist.png" alt="mist.png" height = 75 width = 75>
            <c:if test="${lowTemps.get(i) > highTemps.get(i)}">
                <p>High: ${lowTemps.get(i)}&#8457</p>
                <p>Low: ${highTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
            <c:if test = "${lowTemps.get(i) < highTemps.get(i)}">
                <p>High: ${highTemps.get(i)}&#8457</p> 
                <p>   Low: ${lowTemps.get(i)}&#8457</p>
                <p>${x.get(i).getWeatherStates().get(0).getDescription()}</p>
            </c:if>
        </c:if>            
    </li>
        </c:forEach>
    
    </ul>
<jsp:include page="footer.jsp"/>