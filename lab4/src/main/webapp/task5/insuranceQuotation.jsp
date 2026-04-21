<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Quotation</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>

<div class="container">
    <h1>Insurance Quotation</h1>

    <div class="card">
        <form action="processInsuranceQuo.jsp" method="post">

            <fieldset>
                <legend>Insurance Calculation</legend>

                <div class="form-group">
                    <label for="icNo">IC No*</label>
                    <input type="text" id="icNo" name="icNo" placeholder="E.g. 821210-05-3478" required>
                </div>

                <div class="form-group">
                    <label for="userName">Name*</label>
                    <input type="text" id="userName" name="userName" placeholder="Enter name" required>
                </div>

                <div class="form-group">
                    <label for="marketPrice">Market Price*</label>
                    <input type="number" id="marketPrice" name="marketPrice" step="0.01" placeholder="Price" required>
                </div>

                <div class="form-group">
                    <label for="coverageType">Coverage Type</label>
                    <select id="coverageType" name="coverageType">
                        <option value="Third Party">Third Party</option>
                        <option value="Comprehensive">Comprehensive</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="ncd">No Claims Discount (NCD)</label>
                    <select id="ncd" name="ncd">
                        <option value="0">0%</option>
                        <option value="10">10%</option>
                        <option value="25">25%</option>
                        <option value="30">30%</option>
                        <option value="38.33">38.33%</option>
                        <option value="45">45%</option>
                        <option value="55">55%</option>
                    </select>
                </div>

                <div class="button-group">
                    <button type="submit" class="btn btn-submit">Submit</button>
                    <button type="reset" class="btn btn-cancel">Cancel</button>
                </div>

            </fieldset>
        </form>
    </div>
</div>

</body>
</html>