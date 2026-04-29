
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>test JSTL Date and Time Formatting</h2>

<jsp:useBean id="now" class="java.util.Date" />

<p>
    1. Date
    <strong>
        <fmt:formatDate value="${now}" type="date"/>
    </strong>
</p>

<p>
    2. Time
    <strong>
        <fmt:formatDate value="${now}" type="time" />
    </strong>
</p>

<p>
    3. Both Date and Time:
    <strong>
        <fmt:formatDate value="${now}" type="both" />
    </strong>
</p>

<p>
    4. Long Date and Time:
    <strong>
        <fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="short" />
    </strong>
</p>

<p>
    5. Custom Pattern (dd MMM yyyy, hh:mm a):
    <strong>
        <fmt:formatDate value="${now}" pattern="dd MMMM yyyy, hh:mm:ss a"/>
    </strong>
</p>
</body>
</html>
