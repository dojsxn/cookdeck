<head>
    <title>cookdeck - Process Register Page</title>
    <link rel='icon' type="image/png" sizes="32x32" href='favicon/favicon.png'>
</head>

<?php
    $email = $_POST["emailAddress"];
    $password = $_POST["password"];
    $username = $_POST["username"];
    $firstName = $_POST["firstName"];
    $lastName = $_POST["lastName"];
    $lifeStyle = $_POST["lifeStyle"];

    include('includes/db-config.php');

    $stmt = $pdo->prepare("INSERT INTO `person` (`personId`, `email`, `password`,`username`,`firstName`,`lastName`,`lifeStyle`)
    VALUES (NULL, '$email', '$password', '$username', '$firstName', '$lastName', '$lifeStyle');");

    $stmt->execute();

?>
    <p>Registration Sucessful</p><a href="home-page.php">Back to Homepage</a>
