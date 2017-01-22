<?php
  $server ="localhost";
  $username ="root";
  $password ="";
  $dbname = "trendingnews";
  
  //creating connction
  $conn = new mysqli($server, $username, $password, $dbname);
  
  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}  

?>