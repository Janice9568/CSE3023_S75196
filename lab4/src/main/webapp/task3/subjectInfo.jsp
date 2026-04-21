<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card">
    <h2 class="form-title">Subject Information</h2>

    <div class="result-group">
        <label>Code:</label>
        <p><%= request.getParameter("code") %></p>
    </div>

    <div class="result-group">
        <label>Subject:</label>
        <p><%= request.getParameter("subject") %></p>
    </div>

    <div class="result-group">
        <label>Credit:</label>
        <p><%= request.getParameter("credit") %></p>
    </div>
</div>