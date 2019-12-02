<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <h1 class = "fiveday">Weather Over the Next 5 Days in ${city}</h1>
    <ul>
        
        
        
    <li class = "fiveday">
        <p class = "y">${today.getDateTimeText().substring(0,10)}</p>
        <c:if test = "${today.getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
            <p>${today.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${today.getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/clear.png" alt="clear.png" height = 50 width = 50>
            <p>${today.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${today.getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
            <p>${today.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${today.getWeatherList().get(0).getMainInfo().equals('Thunderstorm')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
            <p>${today.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${today.getWeatherList().get(0).getMainInfo().equals('Snow')}">
            <img class = "micah" src="media/snow.png" alt="snow.png" height = 50 width = 50>
            <p>${today.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${today.getWeatherList().get(0).getMainInfo().equals('Drizzle')}">
            <img class = "micah" src="media/drizzle.png" alt="drizzle.png" height = 50 width = 50>
            <p>${today.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${today.getWeatherList().get(0).getMainInfo().equals('Mist')}">
            <img class = "micah" src="media/mist.png" alt="mist.png" height = 50 width = 50>
            <p>${today.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
            
    </li>
    
    
    
    <li class = "fiveday">
        <p class = "y">${tommorrow.getDateTimeText().substring(0,10)}</p>
        <c:if test = "${tommorrow.getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
            <p>${tommorrow.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${tommorrow.getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/clear.png" alt="clear.png" height = 50 width = 50>
            <p>${tommorrow.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${tommorrow.getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
            <p>${tommorrow.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${tommorrow.getWeatherList().get(0).getMainInfo().equals('Thunderstorm')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
            <p>${tommorrow.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${tommorrow.getWeatherList().get(0).getMainInfo().equals('Snow')}">
            <img class = "micah" src="media/snow.png" alt="snow.png" height = 50 width = 50>
            <p>${tommorrow.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${tommorrow.getWeatherList().get(0).getMainInfo().equals('Drizzle')}">
            <img class = "micah" src="media/drizzle.png" alt="drizzle.png" height = 50 width = 50>
            <p>${tommorrow.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${tommorrow.getWeatherList().get(0).getMainInfo().equals('Mist')}">
            <img class = "micah" src="media/mist.png" alt="mist.png" height = 50 width = 50>
            <p>${tommorrow.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
    </li>
    
    
    
    <li class = "fiveday">
        <p class = "y">${day3.getDateTimeText().substring(0,10)}</p>
        <c:if test = "${day3.getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
            <p>${day3.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${day3.getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/clear.png" alt="clear.png" height = 50 width = 50>
            <p>${day3.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${day3.getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
            <p>${day3.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day3.getWeatherList().get(0).getMainInfo().equals('Thunderstorm')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
            <p>${day3.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day3.getWeatherList().get(0).getMainInfo().equals('Snow')}">
            <img class = "micah" src="media/snow.png" alt="snow.png" height = 50 width = 50>
            <p>${day3.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day3.getWeatherList().get(0).getMainInfo().equals('Drizzle')}">
            <img class = "micah" src="media/drizzle.png" alt="drizzle.png" height = 50 width = 50>
            <p>${day3.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day3.getWeatherList().get(0).getMainInfo().equals('Mist')}">
            <img class = "micah" src="media/mist.png" alt="mist.png" height = 50 width = 50>
            <p>${day3.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
    </li>
    
    
    
    <li class = "fiveday">
        <p class = "y">${day4.getDateTimeText().substring(0,10)}</p>
        <c:if test = "${day4.getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
            <p>${day4.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${day4.getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/clear.png" alt="clear.png" height = 50 width = 50>
            <p>${day4.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${day4.getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
            <p>${day4.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day4.getWeatherList().get(0).getMainInfo().equals('Thunderstorm')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
            <p>${day4.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day4.getWeatherList().get(0).getMainInfo().equals('Snow')}">
            <img class = "micah" src="media/snow.png" alt="snow.png" height = 50 width = 50>
            <p>${day4.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day4.getWeatherList().get(0).getMainInfo().equals('Drizzle')}">
            <img class = "micah" src="media/drizzle.png" alt="drizzle.png" height = 50 width = 50>
            <p>${day4.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day4.getWeatherList().get(0).getMainInfo().equals('Mist')}">
            <img class = "micah" src="media/mist.png" alt="mist.png" height = 50 width = 50>
            <p>${day4.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
    </li>
    
    
    
    <li class = "fiveday">
        <p class = "y">${day5.getDateTimeText().substring(0,10)}</p>
        <c:if test = "${day5.getWeatherList().get(0).getMainInfo().equals('Clouds')}">
            <img class = "micah" src="media/overcast.png" alt="overcast.png" height = 50 width = 50>
            <p>${day5.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${day5.getWeatherList().get(0).getMainInfo().equals('Clear')}">
            <img class = "micah" src="media/clear.png" alt="clear.png" height = 50 width = 50>
            <p>${day5.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        
        <c:if test = "${day5.getWeatherList().get(0).getMainInfo().equals('Rain')}">
            <img class = "micah" src="media/rainy.png" alt="rainy.png" height = 50 width = 50>
            <p>${day5.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day5.getWeatherList().get(0).getMainInfo().equals('Thunderstorm')}">
            <img class = "micah" src="media/thunder.png" alt="thunder.png" height = 50 width = 50>
            <p>${day5.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day5.getWeatherList().get(0).getMainInfo().equals('Snow')}">
            <img class = "micah" src="media/snow.png" alt="snow.png" height = 50 width = 50>
            <p>${day5.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day5.getWeatherList().get(0).getMainInfo().equals('Drizzle')}">
            <img class = "micah" src="media/drizzle.png" alt="drizzle.png" height = 50 width = 50>
            <p>${day5.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
        <c:if test = "${day5.getWeatherList().get(0).getMainInfo().equals('Mist')}">
            <img class = "micah" src="media/mist.png" alt="mist.png" height = 50 width = 50>
            <p>${day5.getWeatherList().get(0).getMainInfo()}</p>
        </c:if>
    </li>
    </ul>
<jsp:include page="footer.jsp"/>