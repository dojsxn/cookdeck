<head>
    <title>cookdeck - Process Suggest Page</title>
    <link rel='icon' type="image/png" sizes="32x32" href='favicon/favicon.png'>
    <link rel="stylesheet" href="css/process.css">
</head>

<html>
<body>
<?php
    include("includes/header.html");
?>

<?php

echo("<div class='process'>");

    $recipeName = $_POST["recipeName"];
    $recipeIng = $_POST["recipeIng"];
    $content = $_POST["content"];
    $emailAddress = $_POST["emailAddress"];
    $lifeStyle = $_POST["lifeStyle"];
    $image = $_FILES["image"]["name"];

    include('includes/db-config.php');

    $stmt = $pdo->prepare("INSERT INTO `suggest` (`recipeId`, `recipeName`, `recipeIng`, `content`, `emailAddress`,`lifeStyle`, `image`)
    VALUES (NULL, '$recipeName', '$recipeIng', '$content', '$emailAddress', '$lifeStyle', '$image');");


    $uploaddir = "uploads/";
    $uploadfile = $uploaddir . basename($_FILES["image"]["name"], time() . "_{$image}");
    if (move_uploaded_file($_FILES['image']["tmp_name"], $uploadfile)) {
        //echo "If you uploaded a recipe image, it was successful!\n";
    } else {
        //echo "You didn't upload a file.\n";
    }

    $stmt->execute();

?>
    <a href="home-page.php">
        <img src="images/cdlogo.png">
    </a>
    <p>Thank you for submitting your recipe!</p><a id="link" href="home-page.php">Back to Homepage</a>
</div>
</body>
</html>
