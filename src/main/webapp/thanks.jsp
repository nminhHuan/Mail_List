<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>

<body class="thanks-page">
    <div class="thanks-card">
        <h1>Thanks for joining our email list!</h1>
        <p class="thanks-subtitle">Here is the information that you entered:</p>

        <table class="thanks-table">
            <tr>
                <th>First Name</th>
                <td>${user.firstName}</td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td>${user.lastName}</td>
            </tr>
            <tr>
                <th>Email</th>
                <td>${user.email}</td>
            </tr>
            <tr>
                <th>Date of Birth</th>
                <td>${user.dob}</td>
            </tr>
            <tr>
                <th>How did you hear about us?</th>
                <td>${user.hear}</td>
            </tr>
            <tr>
                <th>Receive CD announcements &amp; offers?</th>
                <td>${user.valuesAsString}</td>
            </tr>
            <tr>
                <th>Preferred contact method</th>
                <td>${user.contact}</td>
            </tr>
        </table>

        <p class="thanks-note">
            To enter another email address, click on the Back
            button in your browser or the Return button below.
        </p>

        <form action="emailList" method="post" class="thanks-form">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return" id="submit">
        </form>
    </div>
</body>
</html>
