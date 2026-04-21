<%
    String name = request.getParameter("uname");
    String email = request.getParameter("email");
    String nationality = request.getParameter("nationality");
    String background = request.getParameter("background");
%>
<p>Name: <%= name %></p>
<p>Email: <%= email %></p>
<p>Nationality: <%= nationality %></p>
<p>Background: <%= background %></p>

