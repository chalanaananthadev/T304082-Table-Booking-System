<?php session_start();
// Database Connection
include('includes/config.php');
//Validating Session
if(strlen($_SESSION['aid'])==0)
  { 
header('location:index.php');
}
else{
// Code for rese the password of sub admin
if(isset($_POST['reset'])){
$sudadminid=intval($_GET['said']);
$password=md5($_POST['inputpwd']);

$query=mysqli_query($con,"update tbladmin set Password='$password' where UserType=0 and ID='$sudadminid'");
if($query){
echo "<script>alert('Sub-Admin password reset successfully.');</script>";
echo "<script type='text/javascript'> document.location = 'manage-subadmins.php'; </script>";
} else {
echo "<script>alert('Something went wron. Please try again.');</script>";
}
}

  ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Restaurent Table Booking System | Add Sub admin</title>

  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  
 <script type="text/javascript">
function checkpass()
{
if(document.resetpassword.inputpwd.value!=document.resetpassword.confirmpassword.value)
{
alert('New Password and Confirm Password field does not match');
document.resetpassword.confirmpassword.focus();
return false;
}
return true;
}   
</script>
</script>

</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  
<?php include_once("includes/navbar.php");?>
  

  
 <?php include_once("includes/sidebar.php");?>

  
  <div class="content-wrapper">
    
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Reset Subadmin Password</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
              <li class="breadcrumb-item active">Reset Subadmin Password</li>
            </ol>
          </div>
        </div>
      </div>
    </section>

    
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          
          <div class="col-md-8">
            
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Reset the Password</h3>
              </div>
              
              
              <form name="resetpassword" method="post" onsubmit="return checkpass();"
              >
                <div class="card-body">


                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="inputpwd" name="inputpwd" placeholder="Password" required>
                  </div>
  
                  <div class="form-group">
                    <label for="exampleInputPassword1">Confirm Password</label>
                    <input type="password" class="form-control" id="confirmpassword" name="confirmpassword" placeholder="Confirm Password" required>
                  </div>
  
      
                </div>
                
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary" name="reset" id="reset">Reset</button>
                </div>
              </form>
            </div>
            

        
       
          </div>
          
  
        </div>
        
      </div>
    </section>
    
  </div>
  
<?php include_once('includes/footer.php');?>

</div>



<script src="../plugins/jquery/jquery.min.js"></script>

<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<script src="../plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

<script src="../dist/js/adminlte.min.js"></script>

<script src="../dist/js/demo.js"></script>

<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
</body>
</html>
<?php } ?>
