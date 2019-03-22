<?php 
    require_once 'header.php';
     if(isset($_GET['cat'])){
        $currentCat = $_GET['cat'];
        $products = $connect->query("SELECT * FROM products WHERE cat_name = '$currentCat'");
        $products = $products->fetchAll(PDO::FETCH_ASSOC);
    } else {
        $products = $connect->query("SELECT * FROM products");
        $products = $products->fetchAll(PDO::FETCH_ASSOC);
    }
    if(!$products){
?>
    
    <div class="error-main">
        <span class="error-text"><span class="bold">404 ERROR</span><br>Данная страница не существует!</span>
        <a href="index.php" class="main-link">Вернуться на главную</a>
    </div>
    
<?php die(); } ?>


    <div class="main">

        <?php foreach ($products as $product) { ?>
        <div class="card">
            <a href="product.php?product=<?php echo $product['title']; ?>">
                <img src="img/<?php echo $product['img']; ?>" alt="Фото">
            </a>
            <div class="label"><?php echo $product['rus_name'].' ('.$product['price']; ?> рублей)</div>
            <?php require 'add-form.php'; ?>
        </div>
        <?php } ?>
    </div>

</body>
</html>

