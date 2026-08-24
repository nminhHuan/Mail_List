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

    <div class="info-row">
        <label>First Name:</label>
        <span>${user.firstName}</span>
    </div>

    <div class="info-row">
        <label>Last Name:</label>
        <span>${user.lastName}</span>
    </div>

    <div class="info-row">
        <label>Email:</label>
        <span>${user.email}</span>
    </div>

    <div class="info-row">
        <label>Date of Birth:</label>
        <span>${user.dob}</span>
    </div>

    <div class="info-row section-start">
        <label>How did you hear about us:</label>
        <span>
            ${user.hear == 'search' ? 'Search Engine'
                : user.hear == 'word' ? 'Word of Mouth'
                : user.hear == 'social' ? 'Social Media'
                : 'Other'}
        </span>
    </div>

    <div class="info-row">
        <label>Announcements preferences:</label>
        <span>
            ${empty user.valuesAsString ? "No" : "Yes, I'd like that."}
        </span>
    </div>

    <div class="info-row">
        <label>Contact method:</label>
        <span>
            ${user.contact == 'email_or_postal' ? 'Email or postal mail'
                : user.contact == 'email' ? 'Email'
                : 'Postal mail'}
        </span>
    </div>

    <form action="emailList" method="post">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>

</body>
</html>