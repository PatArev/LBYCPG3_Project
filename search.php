<?php
$servername = "localhost";
$username = "root";
$password = ""; // or your actual password
$dbname = "electronics";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$part_number = $_POST['part_number'];

$sql = "SELECT * FROM components WHERE part_number LIKE ?";
$stmt = $conn->prepare($sql);
$like = "%$part_number%";
$stmt->bind_param("s", $like);
$stmt->execute();
$result = $stmt->get_result();

echo "<div class='container'><h2>Search Results</h2>";

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    echo "<div class='result'>
            <strong>Part Number:</strong> " . htmlspecialchars($row["part_number"]) . "<br>
            <strong>Type:</strong> " . $row["type"] . "<br>
            <strong>Description:</strong> " . $row["description"] . "<br>
            <strong>Package:</strong> " . $row["package_type"] . "<br>
            <strong>Voltage Rating:</strong> " . $row["voltage_rating"] . "<br>
            <strong>Current Rating:</strong> " . $row["current_rating"] . "
          </div><hr>";
  }
} else {
  echo "<p>No results found for '$part_number'.</p>";
}
echo "<a href='electronics.html'>Search again</a></div>";

$conn->close();
?>
