<?php 
	//  Kết nối đến CSDL
	include("../config/dbconfig.php");
	
	//Lấy các dữ liệu bên trang Thêm mới bài viết
	$name = $_POST['name'];
	$masp = $_POST['masp'];
	$price = $_POST['price'];
	$category = $_POST['category'];
	$chitiet = $_POST['chitiet'];
	$soluong = $_POST['soluong'];

	// Upload hình ảnh
	$image = $_FILES["image"]["name"];
	$fileanhtam = $_FILES["image"]["tmp_name"];
	$result = move_uploaded_file($fileanhtam,'../image/product/'.$image);
	if(!$result) {
		$image=NULL;
	}

	// Chèn dữ liệu vào bảng tbl_product
	$sql="insert into tbl_product (name,masp,price,image,category,chitiet,soluong) value('$name','$masp','$price','$image','$category','$chitiet','$soluong')";

	// Cho thực thi câu lệnh SQL trên
	$run = mysqli_query($conn, $sql);
	echo '
		<script type="text/javascript">
			alert("Thêm mới sản phẩm thành công !");
			window.location.href="/PHP_WebCuaHangDT_Team5/admin/list_product.php";
			
		</script>';
;?>