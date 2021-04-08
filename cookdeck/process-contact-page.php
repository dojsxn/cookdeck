<head>
    <title>cookdeck - Process Contact Page</title>
    <link rel='icon' type="image/png" sizes="32x32" href='favicon/favicon.png'>
</head>

<?php
    $firstName = $_POST["firstName"];
    $lastName = $_POST["lastName"];
    $emailAddress = $_POST["emailAddress"];
    $lifeStyle = $_POST["lifeStyle"];

    include('includes/db-config.php');

    $stmt = $pdo->prepare("INSERT INTO `contact` (`firstName`, `lastName`, `emailAddress`,`lifeStyle`)
    VALUES ('$firstName', '$lastName', '$emailAddress', '$lifeStyle');");

    $stmt->execute();

?>
    <p>Thank you for contacting us!</p><a href="home-page.php">Back to Homepage</a>
