<?php
 session_start();
	require_once '../db/db.php';

if(isset($_POST['order'])) {
	$name = htmlspecialchars($_POST['name']);
	$phone = htmlspecialchars($_POST['phone']);
	$email = htmlspecialchars($_POST['email']);
	$emaila = "danav@mailfavorite.com"; //https://temp-mail.org/

	$connect->query("INSERT INTO orders (name, phone, email) VALUES ('$name','$phone', '$email')");
	
	$lastId = $connect->query("SELECT MAX(id) FROM orders WHERE email='$email'");
	$lastId = $lastId->fetch(PDO::FETCH_ASSOC);

	$messagek = "<h2>Здравствуйте, Ваш заказ под номером {$lastId['MAX(id)']} принят.</h2>";
	$messagea = "<h2>Новый заказ под номером {$lastId['MAX(id)']} добавлен.</h2>";
	$messagek .= "<h3>Состав заказа: </h3>";
	$messagea .= "<h3>Состав заказа: </h3>";

	foreach ($_SESSION['cart'] as $product) {
		$messagek .= "<div>{$product['rus_name']} в количестве {$product['quantity']} шт.</div>";
		$messagea .= "<div>{$product['rus_name']} в количестве {$product['quantity']} шт.</div>";
	}
	$messagek .= "<p>Сумма заказа: {$_SESSION['totalPrice']} рублей</p>";
	$messagea .= "<p>Сумма заказа: {$_SESSION['totalPrice']} рублей</p>";
	$headers  = 'MIME-Version: 1.0' . "\r\n";
	$headers .= 'Content-type: text/html; charset=utf-8' . "\r\n";

	$subjectk = "Ваш заказ под номером {$lastId['MAX(id)']} принят";
	$subjecta = "Новый заказ под номером {$lastId['MAX(id)']} добавлен";


	mail($email, $subjectk, $messagek, $headers);
	mail($emaila, $subjecta, $messagea, $headers);

	unset($_SESSION['totalPrice']);
	unset($_SESSION['totalQuantity']);
	unset($_SESSION['cart']);

	$_SESSION['order'] = $lastId['MAX(id)'];

	header("Location: {$_SERVER['HTTP_REFERER']}");
}

?>