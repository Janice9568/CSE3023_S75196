<%
    String weightStr = request.getParameter("weight");
    String heightStr = request.getParameter("height");

    double weight = Double.parseDouble(weightStr);
    double height = Double.parseDouble(heightStr);

    double bmi = weight / (height * height);

    String category = "";
    if (bmi < 18.5) {
        category = "Underweight";
    } else if (bmi <= 25) {
        category = "Normal";
    } else {
        category = "Overweight";
    }
%>

<jsp:forward page="resultBMI.jsp">
    <jsp:param name="bmiVal" value="<%= String.valueOf(bmi) %>" />
    <jsp:param name="cat" value="<%= category %>" />
</jsp:forward>