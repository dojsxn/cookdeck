<!DOCTYPE html>
<html>
<head>
    <title>cookdeck - Register</title>
    <?php
        include("includes/meta.html");
    ?>
    <link rel="stylesheet" href="css/registerpage.css">
<head>


<?php
    include("includes/header.html");
?>

<div class = "register">
    <h1 id="registertitle">register</h1>
</div>

<body>

    <div class = "message">
    <h1 id="message"></h1>
    <a id="link"></a>
    </div>

<div class = "form">

    <form action="process-register-page.php" method="POST">

        <p>First Name</p> <input type="text" name="firstName" id="firstName" placeholder="first name..."/>
        <p>Last Name</p>  <input type="text" name="lastName" id="lastName" placeholder="last name..."/>
        <p>Email Address</p> <input type="text" name="emailAddress" id="emailAddress" placeholder="email address..." required/>

        <p>Username</p> <input type="text" name="username" id="username" placeholder="username..."/>
        <p>Password</p> <input type="password" name="password" id="password" placeholder="password..."/>

        <p>Select Your Lifestyle</p> <select id="lifeStyle" name="lifeStyle">
            <option value="student">Student</option>
            <option value="professional">Professional</option>
            <option value="family">Family</option>
        </select>

    <input type="submit" id="submit">

    </form>
<script src="js/register.js"></script>
</div>

</body>
</html>
