<?php
require('header.php') ?>
 <div class="wrapper row3">

  <main class="hoc container clear"> 
    <p style="font-size: 40px">CHI TIẾT SẢN PHẨM</p>
    <?php
    $thanhtien=0;
                              // Bước 1: Kết nối đến CSDL
                               include("config/dbconfig.php");
                               $id = $_GET["id"];
                              //Bước 2: Hiển thị các dữ liệu trong bảng ra đây
                               $sql = "select * from tbl_product where id = ".$id;
                               $run = mysqli_query($conn,$sql);
                               $row = mysqli_fetch_array($run);
                        ?>
    <div class="group">
      <div class="one_half first">
        <p  class="font-xs">Mã sản phẩm: <?php echo $row["masp"];?></p>
        <h6 class="heading font-x3"><?php echo $row["name"];?></h6>
          
       <p> Số lượng có trong kho: <?php echo $row["soluong"];?></p>
        <p> Giá: <?php echo $row["price"];?></p>
        <table>
        <tr>
          <td>
       <footer><a class="btn" href="checkout.php?id=<?php echo $id?>&thanhtien=<?php echo $thanhtien ?>" title="" id="checkout-cart">Mua ngay</a></footer></td>
         <td>
       <footer><a class="btn"  href="cart.php?id=<?php echo $id?>">Thêm vào giỏ hàng</a></footer></td>
        </tr></table>
      </div>
      <div class="one_half"><a href="#"><img  src="index.php/../image/product/<?php echo $row['image']?>" alt=""></a></div>
    </div>
   <h6>Mô tả</h6>
   <p><?php echo $row["chitiet"];?></p>
    <div class="clear"></div>
   
  </main>
</div>
<div class="wrapper row3">
   <main class="hoc container clear"> 
       <div id="tab-content">
                            <div id="detail-product" class="tabItem">
                               <h2>BÌNH LUẬN</h2>
                                <?php 
                                    if (isset($_POST['submit'])) {
                                        $idproduct = $row['id'];
                                        $namemember = $_POST['namemember'];
                                        $noidung = $_POST['noidung'];
                                        $sql1 = "insert into tbl_comment(idproduct, namemember, noidung) value('$idproduct', '$namemember', '$noidung')";
                                        $run1 = mysqli_query($conn, $sql1);
                                    }
                                 ?>
                            </div>
                            <div id="comment-product" class="tabItem" style="margin-top: 0px;">

                                        <?php 
                                            include("config/dbconfig.php");
                                              $sql2 = "SELECT * from tbl_comment where idproduct=".$row['id'];
                                              $run2 = mysqli_query($conn, $sql2);
                                              $i = 0;
                                              while ($row2 = mysqli_fetch_array($run2)) {
                                                $i++;
                                         ?>
                                         <div style="padding: 20px; border: 1px dotted gray; width: 100%; margin: 5px; border-radius: 10px;">
                                             <STRONG><?php echo $row2['namemember']; ?>-----
                                                  <?php 
                                                   $format = "%H:%M:%S %d-%B-%Y";
                                                    $timestamp = time();
                                                    echo $strTime = strftime($format, $timestamp );

                                                     ?>
                                             </STRONG>
                                             <hr>
                                             <p style="padding-left: 30px"><?php echo $row2['noidung']; ?></p>
                                         </div>
                                     <?php } ?>
                                        <form action="" method="POST" style="margin-top: 20px; border: 1px dotted gray; padding-left: 10px; padding-top: 5px; border-radius: 10px">
                                            <input style="margin-top: 10px;font-family: inherit; font-size: inherit; line-height: inherit; height: 40px;display: block;padding: 10px 10px;border: 1px solid #ddd;width: 35%;margin-bottom: 15px;" type="text" name="namemember" placeholder="Tên của bạn"><br>
                                            <textarea placeholder="Nội dung..." style="font-family: inherit; font-size: inherit; line-height: inherit; height: 50px;display: block;padding: 5px 10px;border: 1px solid #ddd;width: 95%;margin-bottom: 15px; resize: none;" name="noidung"></textarea><br>
                                            <input style="display: block;border: none;outline: none;background: blue;color: #fff;padding: 8px 20px;margin-bottom: 50px;" type="submit" name="submit" value="Bình luận">
                                        </form>
                                    <div class="fb-comments" id="fb-comment" data-href="" data-numposts="5">
                                </div>
                            </div>
                        </div>

 
</div>
<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/x1.jpg');"> 
  <div class="wrapper row4">
    <footer id="footer" class="hoc clear"> 
        <div class="one_quarter first">
        <h6 class="heading">Team 5</h6>
        
      </div>
      <div class="one_quarter">
        <h6 class="heading">CONTACT</h6>
 
        <ul class="faico clear">
          <li><a class="faicon-facebook" href="https://www.facebook.com/profile.php?id=100009413897282"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
          <li><a class="faicon-vk" href="#"><i class="fa fa-vk"></i></a></li>
        </ul>
      </div>
      <div class="one_quarter">
        <h6 class="heading">
		SMARTPHONE</h6>
        <article>
          <h2 class="nospace font-x1"><a href="#"></a></h2>
        </article>
      </div>
      <div class="one_quarter">
        <h6 class="heading">HOTLINE</h6>
        <ul class="nospace linklist">
			0974560838
        </ul>
      </div>
    </footer>
  </div>
 
  <div class="wrapper row5">
    <div id="copyright" class="hoc clear"> 
     
    </div>
  </div>
</div>

<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>