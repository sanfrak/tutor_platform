<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{

if(isset($_POST['updateRating']))
  {
    ###added attributes
    $rating=$_SESSION['rating'];
    $vehID=$_SESSION['vid'];
    $email=$_SESSION['login'];
    ### need editing
    $sql="UPDATE tblsessions SET rating=:rating where mentorid=:vehID and userEmail=:email";
    $query = $dbh->prepare($sql);
    $query->bindParam(':rating',$rating,PDO::PARAM_STR);
    $query->bindParam(':vehID',$vehID,PDO::PARAM_STR);
    $query->bindParam(':email',$email,PDO::PARAM_STR);
    $query->execute();
    echo "<script>alert('Invalid Credentials');</script>";
    $msg="Profile Updated Successfully";
}



?><!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>My Bookings | Client Portal</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

<!-- SWITCHER -->
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
        
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/favicon-icon/favicon.png">
<!-- Google-Font-->
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->  
</head>
<body>

<!-- Start Switcher
<?php include('includes/colorswitcher.php');?>
 /Switcher -->  
        
<!--Header-->
<?php include('includes/header.php');?>
<!--Page Header-->
<!-- /Header --> 

<!--Page Header-->
<section class="page-header profile_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>My Booking</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="#">Home</a></li>
        <li>My Booking</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<?php 
$useremail=$_SESSION['login'];
$sql = "SELECT * from tblusers where EmailId=:useremail";
$query = $dbh -> prepare($sql);
$query -> bindParam(':useremail',$useremail, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{ ?>
<section class="user_profile inner_pages">
  <div class="container">
    <div class="user_profile_info gray-bg padding_4x4_40">
      <div class="upload_user_logo"> <img src="assets/images/student.jpg" alt="image">
      </div>

      <div class="dealer_info">
        <h5><?php echo htmlentities($result->FullName);?></h5>
        <p><?php echo htmlentities($result->EmailId);?><br>
          <?php echo htmlentities($result->City);?>&#44;&nbsp;<?php echo htmlentities($result->Country); }}?></p>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3 col-sm-3">
       <?php include('includes/sidebar.php');?>
   
      <div class="col-md-6 col-sm-8">
        <div class="profile_wrap">
          <h5 class="uppercase underline">My Booikngs </h5>
          <div class="my_vehicles_list">
            <ul class="vehicle_listing">
<?php 
$useremail=$_SESSION['login'];
 $sql = "SELECT tblmentors.Vimage1 as Vimage1,tblmentors.MentorName,tblmentors.id as vid,tbluniv.UniversityName,tblsessions.date,tblsessions.time,tblsessions.message,tblsessions.Status  from tblsessions join tblmentors on tblsessions.mentorid=tblmentors.Mid join tbluniv on tbluniv.id=tblmentors.University where tblsessions.userEmail=:useremail";
$query = $dbh -> prepare($sql);
$query-> bindParam(':useremail', $useremail, PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{  ?>

  <li>
    <div class="vehicle_img">
      <a href="mentor-details.php?vhid=<?php echo htmlentities($result->vid);?>"">
        <img src="admin/img/vehicleimages/<?php echo htmlentities($result->Vimage1);?>" alt="image">
      </a>
    </div>
    <div class="vehicle_title">
      <h6><a href="mentor-details.php?vhid=<?php echo htmlentities($result->vid);?>"">
        <?php echo htmlentities($result->MentorName);?>
        </a></h6>
      <p>
        <b>Time: </b>
        <?php echo htmlentities($result->date);?>&#44;&nbsp;<?php echo htmlentities($result->time);?>
      </p>
      <div style="float: left">
        <p><b>Message:</b> <?php echo htmlentities($result->message);?> </p>
      </div>
    </div>

    <?php if($result->Status==1)
    { ?>
    <div class="vehicle_status"> <a href="#" class="btn outline btn-xs active-btn">Confirmed</a>
      <div class="clearfix"></div>
    </div>
    <?php } else if($result->Status==2) 
    { ?>
      <div class="vehicle_status"> <a href="#" class="btn outline btn-xs">Cancelled</a>
        <div class="clearfix"></div>
      </div>
<?php } else 
    { ?>
      <div class="vehicle_status"> <a href="#" class="btn outline btn-xs">Not Confirm yet</a>
        <div class="clearfix"></div>
      </div>
<?php } ?>
    
    <!-- RATE FUNCTION -->
    <p>&nbsp;</p>
    <div class="vehicle_status">
      <input class="vehicle_status" id="rating" name="rating" type="text">
      <p>&nbsp;</p>
      <button type="submit" name="updateRating" class="vehicle_status"><a onclick="return confirm('Do you really want to Confirm this rating?')"> Rate</a></button>
    </div>
  </li>
  <?php }} ?>
             
         
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--/my-vehicles--> 
<?php include('includes/footer.php');?>

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>
</body>
</html>
<?php } ?>