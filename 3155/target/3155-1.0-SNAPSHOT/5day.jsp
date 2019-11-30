<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <ul>
    <li class = "fiveday">
        <p class = "y">${daily.get(0).getDateTimeText().substring(0,10)}</p>
        <c:if test = "${daily.get(0).getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(0).getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(0).getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
        </c:if>
        <p class = "y">High: ${Math.round((((daily.get(0).getMainData().getTempMax() - 273) * 9/5)+32))}&#8457     Low: ${Math.round((((daily.get(0).getMainData().getTempMin() - 273) * 9/5)+32))}&#8457</p>
    </li>
    
    <li class = "fiveday">
        <p class = "y">${daily.get(1).getDateTimeText().substring(0,10)}</p>
        <c:if test = "${daily.get(1).getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(1).getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(1).getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
        </c:if>
        <p class = "y">High: ${Math.round((((daily.get(1).getMainData().getTempMax() - 273) * 9/5)+32))}&#8457     Low: ${Math.round((((daily.get(1).getMainData().getTempMin() - 273) * 9/5)+32))}&#8457</p>
    </li>
    
    <li class = "fiveday">
        <p class = "y">${daily.get(2).getDateTimeText().substring(0,10)}</p>
        <c:if test = "${daily.get(2).getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(2).getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(2).getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
        </c:if>
        <p class = "y">High: ${Math.round((((daily.get(2).getMainData().getTempMax() - 273) * 9/5)+32))}&#8457     Low: ${Math.round((((daily.get(2).getMainData().getTempMin() - 273) * 9/5)+32))}&#8457</p>
    </li>
    <li class = "fiveday">
        <p class = "y">${daily.get(3).getDateTimeText().substring(0,10)}</p>
        <c:if test = "${daily.get(3).getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(3).getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(3).getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
        </c:if>
        <p class = "y">High: ${Math.round((((daily.get(3).getMainData().getTempMax() - 273) * 9/5)+32))}&#8457     Low: ${Math.round((((daily.get(3).getMainData().getTempMin() - 273) * 9/5)+32))}&#8457</p>
    </li>
    <li class = "fiveday">
        <p class = "y">${daily.get(4).getDateTimeText().substring(0,10)}</p>
        <c:if test = "${daily.get(4).getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(4).getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
        </c:if>
        
        <c:if test = "${daily.get(4).getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
        </c:if>
        <p class = "y">High: ${Math.round((((daily.get(4).getMainData().getTempMax() - 273) * 9/5)+32))}&#8457     Low: ${Math.round((((daily.get(4).getMainData().getTempMin() - 273) * 9/5)+32))}&#8457</p>
    </li>
    </ul>
<jsp:include page="footer.jsp"/>