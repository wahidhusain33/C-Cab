<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign Up</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="assets/cedcab.js"></script>

</head>
<body>
<?php
include_once 'layout/header.php';
?>
    
<div class="signup">
    <div>
        <h1>Signup Page !</h1>
        <form  id="formId" enctype="multipart/form-data">
              <div class="input-group flex-nowrap mb-3">
                <span class="input-group-text" id="addon-wrapping">Name</span>
                <input type="name" id="name" class="form-control" placeholder="" aria-label="Username" aria-describedby="addon-wrapping" name="name" required>
            </div>
            <div class="input-group flex-nowrap mb-3">
                <span class="input-group-text" id="addon-wrapping">Email Id</span>
                <input type="email" id="email" class="form-control" placeholder="@ : " aria-label="Username" aria-describedby="addon-wrapping" name="email" required>
            </div>
            <div class="input-group flex-nowrap mb-3">
                <span class="input-group-text" id="addon-wrapping">Password</span>
                <input type="password" id="password" class="form-control" placeholder="Enter Password : " aria-label="Username" aria-describedby="addon-wrapping" name="password" required>
            </div>
            <div class="input-group flex-nowrap mb-3">
                <span class="input-group-text" id="addon-wrapping">Mobileno</span>
                <input type="number" id="mobile" class="form-control" placeholder="Enter Phoneno: " aria-label="Username" aria-describedby="addon-wrapping" name="mobile" required>
            </div>
            <label for="fileupload">Profile Picture**</label>
            <input type="file" name="fileupload" id="fileupload">

            <input type="submit" id="submit" class="btn btn-success btnC" value="SignUp" name='submit'>
        </form>
        <p class="mt-3">Existing User ? <a href="login.php">Login</a></p>
      </div>
</div>
      
      <?php
      include_once 'layout/footer.php';
      ?>
      
</body>
</html>