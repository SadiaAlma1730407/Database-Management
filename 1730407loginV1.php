<?php
$servername="localhost";
$username="root";
$password="";
$dbname="spms";
$conn = mysqli_connect($servername, $username, $password, $dbname);

if(isset($_POST['Login'])){
    $user=$_POST['user'];
    $pass=$_POST['pass'];
    $usertype=$_POST['usertype'];
    $query="SELECT * FROM `loginuser` WHERE userid='".$user."' and password='".$pass."' and usertype='".$usertype."'";
    $result=mysqli_query($conn, $query);

    if($row=mysqli_fetch_array($result)){
       

        if($usertype=="Student"){
            ?>
            <script type="text/javascript">window.location.href="student.php"</script>
            <?php

        }

        else if($usertype=="Instructor"){
            ?>
            <script type="text/javascript">window.location.href="instructor.php"</script>
            <?php
        }

        else if($usertype=="Admin"){
            ?>
            <script type="text/javascript">window.location.href="admin.php"</script>
            <?php
        }

        else if($usertype=="dept_head"){
            ?>
            <script type="text/javascript">window.location.href="dept_head.php"</script>
            <?php
        }

    }

    else{
        echo "no user found";
    }
}
?>
<!doctype html>
<html>

   <head>
       <link rel="stylesheet" type="text/css" href="style.css">
   </head>

   <body>

    <div class="topnav">
        <img src="iub.png">
        <p>SPMS</p>
    </div>
    
        <div class="loginbox">
        <h1>Login </h1>
        <h4>Welcome! Login to acces SPMS</h4>

        <form method="post">
            <p>UserID</p>
            <input type="text" name="user" placeholder="Enter UserID">
            <p>Password</p>
            <input type="password" name="pass" placeholder="Enter Password">

            <p>UserType</p>
            <select name="usertype">
                <option value="Student">Student</option>
                <option value="Instructor">Instructor</option>
                <option value="Admin">Admin</option>
            </select>

            <input type="submit" name="Login" value="Login">
        </form>
        </div>
   </body>
</html>