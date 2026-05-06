<?php
//time zone
date_default_timezone_set('Asia/Kolkata');

// Using port 3307 where we know you don't need a password!
$con = mysqli_connect("127.0.0.1", "root", "", "rtbsdb", 3308);

if(mysqli_connect_errno()){
    echo "Connection Fail: " . mysqli_connect_error();
}
?>