    <?php 
        session_start();

    ?>
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="javascript:void(0)"><img id="img_logo" src="images/logo.png" ></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
          <ul class="navbar-nav me-auto">
            <li class="nav-item">
              <a class="nav-link" href="PAGE_PRINCIPALE.php">HOME</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AllProduct.php">SHOP</a>
            </li>
          </ul>
          <li class="nav-item dropdown">
              <a class="  navbar-brand" href="#" role="button" data-bs-toggle="dropdown">
              <img class="icon" src="images/accont.png"></a>
              
              <ul class="dropdown-menu bg-dark">
                <li><a class="dropdown-item text-white" id="myBtn1" href="#">Sign In</a></li>
                <li><a class="dropdown-item text-white" href="register_form.php">Create Compte</a></li>
              </ul>
            </li>
            <div class="countcart">
              <a class="navbar-brand" href="CartPage.php"><img class="icon" src="images/panier1.png" ></a>  
              <span id="countproductcart">
                <?php
                  // echo $test ; 
                    /////////////////////
                  if(isset($_SESSION['cartArray'])){
                    echo count(array_keys($_SESSION['cartArray']));
                  }
                  else{
                    echo 0 ;
                  }
              ?>
              </span>
            </div>
        </div>
      </div>
    </nav>




    <?php 

// session_start();
if(isset($_POST["submit1"])){
  $email = $_POST["email"];
  // $_SESSION["error_login"] = "";
  $pswd= md5($_POST["pswd"]);
  $sql = "SELECT * FROM client WHERE email = '$email' AND pass = '$pswd'";
  $data = $conn->query($sql);
  $res = $data->fetch_assoc();
  if(!empty($res)){
      header("location: test.php");
      $_SESSION["idClient"] = $res["idClient"];
  }
  else{
      // $_SESSION["error_login"] = "Incorrect username or password!";
      header("location: welecom .php");
    }
}

?>


        <div id="myModal" class="modal">
              <!-- Modal content -->
              <div class="modal-content">
                <span class="close">&times;</span>
                <h2>Sign In</h2>  
                <form action=""  method="POST">
                  <div class="mb-3 mt-3">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter email"  name="email">
                  </div>
                  <div class="mb-3">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" id="pwd" placeholder="Enter password"  name="pswd">
                  </div>
                  <div class="form-check mb-3">
                    <label class="form-check-label">
                      <input class="form-check-input" type="checkbox" name="remember"> Remember me</label>
                  </div>
                  <button type="submit" name="submit1" class="btn btn-primary">LOGIN</button>
                </form>
              </div>

        </div>

          <script>
          // Get the modal
          var modal = document.getElementById("myModal");

          // Get the button that opens the modal
          var btn = document.getElementById("myBtn1");

          // Get the <span> element that closes the modal
          var span = document.getElementsByClassName("close")[0];

          // When the user clicks the button, open the modal 
          btn.onclick = function() {
            modal.style.display = "block";
          }

          // When the user clicks on <span> (x), close the modal
          span.onclick = function() {
            modal.style.display = "none";
          }

          // When the user clicks anywhere outside of the modal, close it
          window.onclick = function(event) {
            if (event.target == modal) {
              modal.style.display = "none";
            }
          }
          </script>

 <!-- <a class="navbar-brand" href="javascript:void(0)"></a> -->
            <!-- <li><a class="dropdown-item" href="#"></a></li> -->

