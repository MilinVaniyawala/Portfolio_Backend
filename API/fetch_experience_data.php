<?php
// Include database connectection
include '../config/connect.php';

// Check if user_id parameter is provided
if (isset($_GET['user_id'])) {  
    $user_id = $_GET['user_id'];

    // Query to fetch user details along with associated data
    $query = 'SELECT * FROM `experience` WHERE user_id = ?';

    // Prepare statement
    $stmt = $conn->prepare($query);

    // Bind parameter
    $stmt->bind_param("i", $user_id);

    // Execute statement
    $stmt->execute();

    // Get result
    $result = $stmt->get_result();

    // Fetch experience data along with associated data
    $experience_data = array();

    while ($row = $result->fetch_assoc()) {
        // Extract experience details
        $experience_data['experience'][] = array(
            'icon_of_company' => $row['icon_of_company'],
            'company_name' => $row['company_name'],
            'company_address' => $row['company_address'],
            'position' => $row['position'],
            'start_date' => $row['start_date'],
            'end_date' => $row['end_date'],
            'description' => $row['description']
        );
    }

    // Close statement
    $stmt->close();

    // Return JSON response
    header('Content-Type: application/json');
    echo json_encode($experience_data);
} else {
    // If user_id parameter is not provided
    http_response_code(400); // Bad Request
    echo json_encode(array("message" => "Missing user_id parameter"));
}
