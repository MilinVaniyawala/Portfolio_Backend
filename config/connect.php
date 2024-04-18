<?php
// ************************************************************
// Connect to the database
// Load environment variables from the .env file and then use
// the database variables to connect to a MySQL database. 

$env = file(__DIR__ . '/../.env', FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);

foreach ($env as $value) {
    $getData = explode('=', $value);
    define($getData[0], $getData[1]);
}

$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// Check Connection
if (!$conn) {
    die("Connection Failed:" . mysqli_connect_error());
} else {
    // echo "Connected Successfully!!!";
}
