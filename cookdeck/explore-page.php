<!DOCTYPE html>
<html>
<head>
    <title>cookdeck - Explore</title>
    <?php
        include("includes/meta.html");
    ?>
    <link rel="stylesheet" href="css/explore.css">
<head>

<?php
    include("includes/header.html");
    session_start();
    if(isset($_SESSION["personId"]));
?>

<body>

<div class = "explore">
    <h1 id="exploretitle">explore</h1>
</div>

<div class = "student">
    <img id="stu" src="images/student.png" width="80" height="80">
    <h1 id="studentitle">explore student lifestyle recipes</h1>
    <a href="view-recipe-student.php" class="button">explore here</a>
</div>

<div class = "professional">
    <img id="prof" src="images/prof.png" width="65" height="65">
    <h1 id="proftitle">explore professional lifestyle recipes</h1>
    <a href="view-recipe-professional.php" class="button2">explore here</a>
</div>

<div class = "family">
    <img id="fam" src="images/fam.png" width="75" height="75">
    <h1 id="famtitle">explore family lifestyle recipes</h1>
    <a href="view-recipe-family.php" class="button">explore here</a>
</div>

<div class = "user">
    <img id="user" src="images/user.png" width="75" height="75">
    <h1 id="usertitle">explore user submitted recipes</h1>
    <a href="view-recipe-user.php" class="button2">explore here</a>
</div>

</body>
</html>

<?php
    include("includes/footer.html");
?>
