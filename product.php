<?php 
    require_once 'header.php';

    if(isset($_GET['product'])){
    	$currentProduct = $_GET['product'];
    	$product = $connect->query("SELECT * FROM products WHERE title = '$currentProduct'");
    	$product = $product->fetch(PDO::FETCH_ASSOC);
    	// var_dump($product);
    }
?>

<div class="product-card">
    <a href="index.php">Вернуться на главную</a>

    <h2><?php echo $product['rus_name']; ?> (<?php echo $product['price']; ?> рублей)</h2>
    <div class="descr"><?php echo $product['descr']; ?></div>
    <img width="300" src="img/<?php echo $product['img']; ?>" alt="<?php echo $product['rus_name']; ?>">
    <button type="submit">Добавить в корзину</button>
</div>
