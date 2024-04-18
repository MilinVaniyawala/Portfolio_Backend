<?php
// Include database connectection
include '../config/connect.php';

// Check if user_id parameter is provided
if (isset($_GET['user_id'])) {
    $user_id = $_GET['user_id'];

    // Query to fetch user details along with associated data
    $query = 'SELECT * FROM `projects` WHERE user_id = ?';

    // Prepare statement
    $stmt = $conn->prepare($query);

    // Bind parameter
    $stmt->bind_param("i", $user_id);

    // Execute statement
    $stmt->execute();

    // Get result
    $result = $stmt->get_result();

    // Fetch projects data along with associated data
    $project_data = array();

    while ($row = $result->fetch_assoc()) {
        // Extract projects details
        $project_data['projects'][] = array(
            'image' => $row['image'],
            'technologies_stack' => $row['technologies_stack'],
            'website_link' => $row['website_link'],
            'project_name' => $row['project_name']
        );
    }

    // Close statement
    $stmt->close();

    // Return JSON response
    header('Content-Type: application/json');
    echo json_encode($project_data);
} else {
    // If user_id parameter is not provided
    http_response_code(400); // Bad Request
    echo json_encode(array("message" => "Missing user_id parameter"));
}
