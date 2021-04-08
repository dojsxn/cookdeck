<!DOCTYPE html>
<html>
<head>
    <title>cookdeck - Contact Us</title>
    <?php
        include("includes/meta.html");
    ?>
    <link rel="stylesheet" href="css/contact-page.css">
<head>

<?php
    include("includes/header.html");
    session_start();
    if(isset($_SESSION["personId"]));
?>


<div class = "contact">
    <h1 id="contacttitle">contact</h1>
</div>

<body>

<div class="message">
    <h1 id="message"></h1>
    <a id="link"></a>
</div>

<div class="form">
<form method="POST" enctype="multipart/form-data" action="process-contact-page.php">

    <p>First Name</p> <input type="text" name="firstName" id="firstName" placeholder="first name..."/>
    <p>Last Name</p>  <input type="text" name="lastName" id="lastName" placeholder="last name..."/>
    <p>Your Email</p> <input type="email" name="emailAddress" id="emailAddress" placeholder="email address..." required/>

    <p>Select Your Lifestyle</p> <select id="lifeStyle" name="lifeStyle">
            <option value="student">Student</option>
            <option value="professional">Professional</option>
            <option value="family">Family</option>
    </select>

    <input type="submit" id="submit">
</form>
</div>

<div class = "explore">
    <h1 id="exploretitle">have a recipe suggestion for cookdeck?</h1>
    <a href="suggest.php" class="button">submit your recipe here</a>
</div>

    <script src="js/contact.js"></script>

</body>
</html>
