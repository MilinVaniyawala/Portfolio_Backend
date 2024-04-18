<?php
// Include database connection
include '../config/connect.php';

// Check if request method is POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Retrieve form data
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $subject = $_POST['subject'];
    $comment = $_POST['comment'];

    // Prepare and execute SQL query to insert data into Contact_Inquiries table
    $query = "INSERT INTO Contact_Inquiries (name, email, phone, subject, comment) VALUES (?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("sssss", $name, $email, $phone, $subject, $comment);
    if ($stmt->execute()) {
        // Data inserted successfully
        http_response_code(201); // Created
        echo json_encode(array("message" => "Inquiry submitted successfully"));
    } else {
        // Failed to insert data
        http_response_code(500); // Internal Server Error
        echo json_encode(array("message" => "Failed to submit inquiry"));
    }
} else {
    // If request method is not POST
    http_response_code(405); // Method Not Allowed
    echo json_encode(array("message" => "Method not allowed"));
}
