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
    <p>Weather: ${weather}</p>

    
</div>

<jsp:include page="footer.jsp"/>