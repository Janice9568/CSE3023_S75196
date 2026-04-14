<%@ page import="java.util.ArrayList" %>


<div style="background-color: #003366; color: white; padding: 20px; text-align: center;">
    <h1>UMT Student Club Registration</h1>
    <nav>
        <a href="registerClub.jsp" style="color: white; margin: 10px;">Registration</a> |
        <a href="feeCalculator.jsp" style="color: white; margin: 10px;">Fee Calculator</a> |
        <a href="memberDirectory.jsp" style="color: white; margin: 10px;">Member Directory</a>
    </nav>
</div>
<%
    if (application.getAttribute("clubMembers") == null) {
        ArrayList<String> initialList = new ArrayList<>();
        initialList.add("Mohamad Azam");
        initialList.add("Peter Chong");
        application.setAttribute("clubMembers", initialList);
    }
%>
<hr>