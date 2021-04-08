<head>
    <title>cookdeck - Process Login Page</title>
    <link rel='icon' type="image/png" sizes="32x32" href='favicon/favicon.png'>
    <link rel="stylesheet" href="css/process.css">
</head>

<html>
<body>
<?php
    include("includes/header.html");
?>
<?php
session_start();
echo("<div class='process'>");
    $username = $_POST["username"];
    $password = $_POST["password"];

	include('includes/db-config.php');

	$stmt = $pdo->prepare("SELECT * FROM `person`
	WHERE `username` = '$username'
	AND `password` = '$password'");

$stmt->execute();

$row = $stmt->fetch(PDO::FETCH_ASSOC);

if($row){
    $SESSION["personId"] = $row["personId"];
    header('Location:explore-page.php');
}else{
    ?>
    <a href="login-page.php">
        <img src="images/cdlogo.png">
    </a>
    <p>Incorrect Login Information. Please Try Again!</p>
        <a id="link" href="login-page.php">Back to Login</a><?php
}
?>
</div>
</body>
</html>
