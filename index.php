<?php 
    require_once 'header.php';
    $products = $connect->query("SELECT * FROM products");
    $products = $products->fetchAll(PDO::FETCH_ASSOC);
?>
    <div class="main">

        <?php foreach ($products as $product) { ?>
        <div class="card">
            <a href="product.php?title=<?php echo $product['title']; ?>">
                <img src="img/<?php echo $product['img']; ?>" alt="Фото">
            </a>
            <div class="label"><?php echo $product['rus_name'].' ('.$product['price']; ?> рублей)</div>
            <button type="submit">Добавить в корзину</button>
        </div>
        <?php } ?>
    </div>

</body>
</html>

