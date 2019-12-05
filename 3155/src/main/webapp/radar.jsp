<jsp:include page="header.jsp"/>
<jsp:include page="navigation.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<center>
    <iframe src="https://www.rainviewer.com/map.html?loc=${lat},${lng},15&oFa=0&oC=0&oU=0&oCS=1&oF=0&oAP=0&rmt=2&c=3&o=83&lm=1&th=1&sm=1&sn=1" width="75%" frameborder="0" style="border: 5;height:75vh;" allowfullscreen></iframe>
</center>
<jsp:include page="footer.jsp"/>