<?php
require ("../init.php");
$sql = "select * from sumary";
$result = mysqli_query($conn, $sql);
echo json_encode(mysqli_fetch_all($result,1));