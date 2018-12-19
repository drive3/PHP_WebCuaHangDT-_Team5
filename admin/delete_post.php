<?php 

    
    $id = $_GET['id'];

    // Xóa bài viết có id trong bảng
    // Kết nối đến CSDL 
    include("../config/dbconfig.php");

    // Xóa dữ liệu trong bảng       
    $sql = "delete from tbl_post where id = '".$id."'";

    // Cho thực thi câu lệnh SQL trên
    $run = mysqli_query($conn,$sql);
   echo "
    <script language='javascript'>
      alert('Đăng nhập thành công');
      window.open('".$site_admin."/list_post.php','_self', 1);
    </script>
    ";
;?>