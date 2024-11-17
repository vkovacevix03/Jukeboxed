<?php
function OpenCon()
{
$dbhost = "localhost";
$dbuser = "root";
$dbpass = "password";
$db = "example";
$conn = new mysqli($dbhost, root, password,jukeboxed) or die("Connect failed: %s\n". $conn -> error);
return $conn;
}
function CloseCon($conn)
{
$conn -> close();
}
?>