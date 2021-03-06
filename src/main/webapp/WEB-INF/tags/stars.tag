<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="score" type="java.lang.Integer" %>
<%@ attribute name="canRead" type="java.lang.Boolean" %>

<c:set var="scoreClass" value="regular-score"/>
<c:if test="${score <= 2}">
    <c:set var="scoreClass" value="low-score"/>
</c:if>
<c:if test="${score > 3}">
    <c:set var="scoreClass" value="high-score"/>
</c:if>

<c:if test="${score == 0}">
    <c:set var="scoreClass" value=""/>
</c:if>

<c:if test="${canRead}">
    <c:forEach begin="1" end="${score}">
        <i class="icon-star ${scoreClass}"></i>
    </c:forEach>
    <c:forEach begin="${score + 1}" end="5">
        <i class="icon-star-empty ${scoreClass}"></i>
    </c:forEach>
</c:if>
<c:if test="${not canRead}">
    <c:forEach begin="1" end="5">
        <i class="icon-star-empty"></i>
    </c:forEach>
</c:if>