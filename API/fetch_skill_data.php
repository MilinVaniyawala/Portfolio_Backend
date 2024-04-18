<?php
// Include database connectection
include '../config/connect.php';

// Check if user_id parameter is provided
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];

    // Query to fetch user details along with associated data
    $query = 'SELECT * FROM `skills` WHERE user_id = ?';

    // Prepare statement
    $stmt = $conn->prepare($query);

    // Bind parameter
    $stmt->bind_param("i", $user_id);

    // Execute statement
    $stmt->execute();

    // Get result
    $result = $stmt->get_result();

    // Fetch skills data along with associated data
    $skill_data = array();

    while ($row = $result->fetch_assoc()) {
        // Extract skill details
        $skill_data['skills'][] = array(
            'icon' => $row['icon'],
            'title' => $row['title']
        );
    }

    // Close statement
    $stmt->close();

    // Return JSON response
    header('Content-Type: application/json');
    echo json_encode($skill_data);
} else {
    // If user_id parameter is not provided
    http_response_code(400); // Bad Request
    echo json_encode(array("message" => "Missing user_id parameter"));
}
