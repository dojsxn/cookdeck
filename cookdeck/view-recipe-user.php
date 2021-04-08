<!DOCTYPE html>
<html>
<head>
    <title>cookdeck - Student Lifestyle Recipes </title>
    <?php
        include("includes/meta.html");
    ?>
    <link rel="stylesheet" href="css/view-suggest.css">
<head>

<?php
    include("includes/header.html");
    session_start();
    if(isset($_SESSION["personId"]));
?>

<body>

<div class = "suggest">
    <h1 id="suggesttitle">user submitted recipes</h1>
    <a href="suggest.php" class="button">Submit Your Recipe Today</a>
</div>

<?php
    include('includes/db-config.php');

    $stmt = $pdo->prepare("SELECT * FROM `suggest`");

    $stmt->execute();

    while($row = $stmt ->fetch(PDO::FETCH_ASSOC)){

        echo("<div class='recipe'>");

        echo("<div class='img'>");
            echo "<img src='uploads/".$row['image']."'height=350px width=600px'/>";
        echo("</div>");

        echo("<h1>");
            echo($row["recipeName"]);
        echo("</h1>");

        echo("<h2>");
            echo("ingredients");
        echo("</h2>");

        echo("<p>");
            echo($row["recipeIng"]);
        echo("</p>");

        echo("<h2>");
            echo("recipe creator");
        echo("</h2>");

        echo("<p>");
            echo($row["emailAddress"]);
        echo("</p>");

        echo("<h2>");
            echo("recipe lifestyle");
        echo("</h2>");

        echo("<p>");
            echo($row["lifeStyle"]);
        echo("</p>");

        echo("<div class='link'>");
            echo "<a href='view-user-recipe.php?recipeId=".$row['recipeId']."'>View Full Recipe</a>";
        echo("</div>");

        echo("</div>");
}
?>
<div class = "explore">
    <h1 id="exploretitle">explore cookdeck's lifestyle recipes here</h1>
        <a href="explore-page.php" class="button2">explore here</a>
</div>

</body>
</html>

<?php
    include("includes/footer.html");
?>
