<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="mapid"></div>
<script>
    var mymap = L.map('mapid').setView([51.505, -0.09], 13);
    L.tileLayer('https://tile.openweathermap.org/map/{layer}/{z}/{x}/{y}.png?appid=566c5f6f796270ca04bd8c5031da5847', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox/streets-v11',
    accessToken: 'your.mapbox.access.token'
}).addTo(mymap);

</script>
<jsp:include page="footer.jsp"/>