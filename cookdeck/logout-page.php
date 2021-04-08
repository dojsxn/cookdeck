<!DOCTYPE html>
<html>
<head>
    <title>cookdeck - Logout Page</title>
    <?php
        include("includes/meta.html");
    ?>
    <link rel="stylesheet" href="css/logout.css">
<head>


<?php
	session_start();
 	session_destroy();
?>

<?php
    include("includes/header.html");
?>

<body>

<div class="logout">
    <a href="home-page.php">
        <img src="images/cdlogo.png">
    </a>
    <p>Thank you for using cookdeck!</p>

<div class="link">
	<a href="home-page.php">Return Home</a>
</div>

</div>

</body>
</html>
