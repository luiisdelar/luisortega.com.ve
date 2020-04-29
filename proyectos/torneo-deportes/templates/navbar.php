<nav class="navbar navbar-expand-lg navbar-dark bg-dark justify-content-between">
  

  <div>  
    <a class="navbar-brand" href="index.php">
    <img src="icon.png" width="30" height="30" alt="">
    </a>

    <a class="navbar-brand" href="index.php">Sports Systems</a>
  </div>  

  <div class="justify-content-end">
    
    <div class="justify-content-end">
      <a class="btn btn-outline-light" href=""><i class="fa fa-user"></i> <?php echo $_SESSION["user"]; ?></a>
      <input class="btn btn-outline-light my-2 my-sm-0" type="button" value="Return" onclick="location.href='logout.php';">
      <input class="btn btn-outline-light my-2 my-sm-0" type="button" value="Logout" onclick="location.href='logout.php';">
    </div>
 
  </div>
</nav>