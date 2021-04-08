<!DOCTYPE html>
<html>
<head>
    <title>cookdeck - Home</title>
    <?php
        include("includes/meta.html");
    ?>
    <link rel="stylesheet" href="css/home-page.css">
<head>

<?php
    include("includes/header.html");
    session_start();
    if(isset($_SESSION["personId"]));
?>

<body>

<div class = "home">
    <h1 id="hometitle">cookdeck</h1>
</div>

<?php
    include('includes/db-config.php');

    $stmt = $pdo->prepare("SELECT * FROM `home`");

    $stmt->execute();

    while($row = $stmt ->fetch(PDO::FETCH_ASSOC)){

echo("<div class = 'intro'>");
    echo("<h1 id='title'>");
        echo("cooking recipes, simplified!");
    echo("</h1>");

    echo("<p id='about'>");
        echo($row["about"]);
    echo("</p>");

    echo "<a href='register-page.php' class='button'>Find Your Next Meal!</a>";
echo("</div>");

echo("<div class ='benefit2'>");
    echo("<h1 id='title3'>");
        echo("why cookdeck?");
    echo("</h1>");

    echo("<p id='about3'>");
        echo($row["benefit1"]);
    echo("</p>");

    echo "<img id='food' src='images/food.png' width='100' height='100'>";
echo("</div>");

echo("<div class ='benefit'>");
    echo("<h1 id='title2'>");
        echo("your lifestyle, your cooking recipes!");
    echo("</h1>");

    echo("<p id='about2'>");
        echo($row["benefit2"]);
    echo("</p>");

    echo "<img id='food' src='images/cooking.png' width='100' height='100'>";
echo("</div>");

echo("<div class ='benefit2'>");
    echo("<h1 id='title2'>");
        echo("have your own recipe? submit it here on cookdeck!");
    echo("</h1>");

    echo("<p id='about2'>");
        echo($row["benefit3"]);
    echo("</p>");

    echo "<a href='suggest.php' class='button'>Submit Recipe Here!</a>";
echo("</div>");

}
?>

</body>
</html>

<?php
    include("includes/footer.html");
?>
