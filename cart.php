<?php 
    require_once 'header.php';
if(isset($_SESSION['order'])) { ?>
	<center><h2>Ваша заказ под номером <?php echo $_SESSION['order']; ?>  принят</h2>
	<a href="index.php" class="back">Вернуться на главную</a></center>
<?php 
	unset($_SESSION['order']); }
	else if(count($_SESSION['cart'])==0) { ?>
	
	<center><h2>Ваша корзина пуста</h2>
	<a href="index.php" class="back">Вернуться на главную</a></center>

<?php } else {

foreach ( $_SESSION['cart'] as $key=>$product) {

?>
<div class="cart">
    <a href="product.php?product=<?php echo $product['title']; ?>">
    <img src="img/<?php echo $product['img']; ?>" alt="<?php echo $product['rus_name']; ?>"></a>
        <div class="cart-descr">
            <?php echo $product['rus_name']; ?> в количестве <?php echo $product['quantity']; ?> шт на сумму <?php echo $product['quantity'] * $product['price']; ?> рублей
        </div>
        <form action="actions/delete.php" method="POST">
		    <input type="hidden" name="delete" value="<?php echo $key; ?>">
		    <input type="submit" value="Удалить">
		</form>
    </div>
  
<?php } ?>
<hr>
 <form action="actions/mail.php" method="POST" class="order">
    	<input type="text" name="name" placeholder="Имя*" required="required">
    	<input type="text" name="phone" placeholder="Телефон*" required="required">
    	<input type="text" name="email" placeholder="E-mail*" required="required">
    	<input type="submit" name="order" value="Оформить заказ">
    </form>
<?php } ?>
</body>
</html>

