<?php session_start();
// Database Connection
include('includes/config.php');

if(strlen($_SESSION['aid'])==0)
  { header('location:index.php');
}
else{

if(isset($_POST['change'])){
$admid=$_SESSION['aid'];
$cpassword=md5($_POST['currentpassword']);
$newpassword=md5($_POST['newpassword']);
$query=mysqli_query($con,"select ID from tbladmin where ID='$admid' and   Password='$cpassword'");
$row=mysqli_fetch_array($query);
if($row>0){
$ret=mysqli_query($con,"update tbladmin set Password='$newpassword' where ID='$admid'");
echo '<script>alert("Your password successully changed.")</script>';
} else {

echo '<script>alert("Your current password is wrong.")</script>';
}



}

  ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Restaurent Table Booking System   | Change Password</title>

  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
  

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
            <h1>B/w Dates Report</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
              <li class="breadcrumb-item active">B/w Dates Report</li>
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
                <h3 class="card-title">B/w Dates Booking Report</h3>
              </div>
              

<form method="post"  name="bwdatesreport" action="bwdates-report-details.php">  
                <div class="card-body">


   <div class="form-group">
                    <label for="exampleInputFullname">From Date</label>
                <input class="form-control" id="fdate" name="fdate"  type="date" required="true">
                  </div>

 <div class="form-group">
<label for="exampleInputEmail1">To Date</label>
<input class="form-control " id="tdate" type="date" name="tdate" required="true">
</div>



      
                </div>
                
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary" name="submit" id="submit">Submit</button>
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
