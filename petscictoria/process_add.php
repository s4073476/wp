<?php
include 'includes/db_connect.inc';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $petname = $_POST['petname'];
    $description = $_POST['description'];
    $age = $_POST['age'];
    $type = $_POST['type'];
    $location = $_POST['location'];

    // Handle image upload
    $target_dir = "images/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]);
    if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
        $image = $_FILES["image"]["name"];
    } else {
        die("Sorry, there was an error uploading the file.");
    }

    // Insert the pet into the database
    $sql = "INSERT INTO pets (petname, description, age, type, location, image) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$petname, $description, $age, $type, $location, $image]);

    echo "Pet added successfully!";
}
?>
