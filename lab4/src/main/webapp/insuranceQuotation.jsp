<%--
  Created by IntelliJ IDEA.
  User: Home Use PC
  Date: 19-May-26
  Time: 10:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="processInsuranceQuo.jsp" method="post">
    <fieldset>
        <legend>Insurance Calculation</legend>
        <div>
        <label for="ic">IC No*</label><br><br>
        <input type="text" id="ic" name="icNo" placeholder="E.g. 090602-10-4356" required>
        </div>

        <div>
            <label for="name">Name*</label><br><br>
            <input type="text" id="name" name="name" placeholder="Enter name" required>
        </div>

        <div>
            <label for="price">Market Price</label><br><br>
            <input type="number" id="price" name="marketPrice" placeholder="Price" required><br><br>
        </div>

        <div>
            <label for="coverageType">Coverage Type</label><br>
            <select id="coverageType" name="coverageType">
                <option value="comprehensive">Comprehensive</option>
                <option value="thirdParty">Third-Party only</option>
            </select>
        </div>

        <div>
            <label for="ncd">No Claims Discount (NCD)</label>
            <select id="ncd" name="ncd">
                <option value="0.25">25%</option>
                <option value="0.45">45%</option>
                <option value="0.55">55%</option>
            </select>
        </div>

        <button type="submit">Submit</button>
        <button type="reset">Cancel</button>
    </fieldset>
</form>
</body>
</html>
