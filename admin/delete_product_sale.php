<?php 

    // Lấy id từ trên đường dẫn
    $id = $_GET['id'];

    // Xóa bài viết có id trong bảng
    // Kết nối đến CSDL 
    include("../config/dbconfig.php");

    // Xóa dữ liệu trong bảng       
    $sql = "delete from tbl_product_sale where id = '".$id."'";

    // Cho thực thi câu lệnh SQL trên
    $run = mysqli_query($conn,$sql);
    echo '
        <script type="text/javascript">
            alert("Xóa sản phẩm thành công!!!");
            window.location.href="/Project_PHP_Team5/admin/list_product_sale.php";
        </script>';
;?>