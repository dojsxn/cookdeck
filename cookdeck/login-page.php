<!DOCTYPE html>
<html>
<head>
    <title>cookdeck - Login</title>
<?php
    include("includes/meta.html");
?>
    <link rel="stylesheet" href="css/login-page.css">
<head>

<?php
    include("includes/header.html");
?>


<div class = "login">
    <h1 id="logintitle">login</h1>
</div>

<body>
    <div class = "form">
    <form action="process-login-page.php" method="POST">
        <p>Username</p> <input type="text" name="username" placeholder="username..." />
        <p>Password</p> <input type="password" name="password" placeholder="password..."/>
    <input type="submit"/>
    </form>
    </div>
</body>
</html>
