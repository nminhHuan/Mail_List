<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="main.css" type="text/css"/>
</head>

<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>First Name:</label>
    <span>${user.firstName}</span><br>

    <label>Last Name:</label>
    <span>${user.lastName}</span><br>

    <label>Email:</label>
    <span>${user.email}</span><br>

    <label>Date of Birth:</label>
    <span>${user.dob}</span><br>

    <label>How did you hear about us ?</label>
    <span>${user.hear}</span><br>

    <label>Would you like to receive annoucement about new CDs and special offer?</label>
    <span>${user.valuesAsString}</span><br>


    <label>Please contact me by:</label>
    <span>${user.contact}</span><br>

    <p>To enter another email address, click on the Back
        button in your browser or the Return button shown
        below.</p>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
</body>
</html>