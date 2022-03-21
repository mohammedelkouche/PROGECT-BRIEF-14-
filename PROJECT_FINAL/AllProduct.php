<?php 
    include "connexion.php";
    $sql = "SELECT * FROM `produit`";
    $result = mysqli_query($conn, $sql);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="style-header shop.css">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
<?php 
    include "Navbar.php";
?>
<div class=" produits row">
    
        <?php while ($row = mysqli_fetch_assoc($result)): ?>
            
        <div class="card col-sm-12 col-md-8 col-lg-6">
            <div class="m-product">
            <!-- <a href="item.php?id=<?php echo $row["idProduit"] ?>"> -->
            <?php echo '<img class="card-img-top" src="'. 'images/'. $row["image"].'" alt="HTML5 Icon" style="width:100%">';?>
            <h4 ><?php echo $row["libelle"]?></h4>
       
            <?php
            if($row["stock"] == 0): 
            ?>
                  <p  style="color:red;"><?php echo "out of stock" ?></p>
            <?php else: ?> 
                  <p class="price"><?php echo $row["prix"]?></p>
                  <div id="button_chop_now">
                    <a href="ProductOverview.php?id=<?php echo $row["idProduit"] ?>">SHOP NOW</a>
                    <!-- bootstra5 
                        <a href='ProductOverview.php?id=".$row["idProduit"]."' class= 'btn btn-dark'>SHOP NOW</a>
                    -->
                  </div>
                  <!-- <button><a href="">Add to Cart</a> </button> -->
              <?php endif ?>
            <!-- </a> -->
            </div>
        </div>

            <?php
                endwhile;
                include "footer.php";
            ?>
           
            
</div>

</body>
</html>