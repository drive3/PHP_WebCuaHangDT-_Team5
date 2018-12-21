<?php
include('header.php') ?>
  
<div class="wrapper row3">
  <main class="hoc container clear"> 
   
     
     
  <section class="hoc container clear"> 
      <?php
            if(isset($_GET['trang'])){
                $get_trang = $_GET['trang'];
            }
            else{
                $get_trang = '';
            }
            if ($get_trang == '' || $get_trang == 1){
                $trang = 0;
            }
            else
            {
                $trang = ($get_trang*8)-8;
            }


            ?>
 
    <div class="sectiontitle">
      <h6 class="heading">Sản phẩm</h6>
      <p>Toàn bộ sản phẩm theo hãng</p>
    </div>
   
    <div class="group elements" style="width: 1200px">
      
         <?php
                      // $cat = $_GET['id'];
                    $id = $_GET['id'];
                    include("config/dbconfig.php");
                    if (isset($_POST['filter_price'])){
                        if (isset($_POST['s-product'])) {
                            if ($_POST['s-product'] != ''){
                                $s = $_POST['s-product'];
                                switch($_GET['filter_price']){
                                    case "1":
                                        $sql="select * FROM tbl_product WHERE name like $s order by id asc limit $trang,8"; 
                                    break;
                                    case "2":
                                        $sql="select * FROM tbl_product WHERE name like $s  and price between 1000000 and 2000000 order by id asc limit $trang,8";   
                                    break;
                                    case "3":
                                        $sql="select * FROM tbl_product WHERE name like $s  and price between 2000000 and 3000000 order by id asc limit $trang,8";   
                                    break;
                                    case "4":
                                        $sql="select * FROM tbl_product WHERE name like $s and price between 3000000 and 4000000 order by id asc limit $trang,8";   
                                    break;
                                    case "5":
                                        $sql="select * FROM tbl_product WHERE name like $s and price price >= 5000000 order by id asc limit $trang,8";   
                                    break;
                                    default:
                                      $sql="select * FROM tbl_product WHERE name like $s andder by id asc limit $trang,8";   
                                      break;
                                  }
                            }
                        }else{
                            switch($_POST['filter_price']){
                                case "1":
                                    $sql="select * FROM tbl_product WHERE  price between 0 and 1000000 order by id asc limit $trang,8"; 
                                break;
                                case "2":
                                    $sql="select * FROM tbl_product WHERE  price between 1000000 and 2000000 order by id asc limit $trang,8";   
                                break;
                                case "3":
                                    $sql="select * FROM tbl_product WHERE  price between 2000000 and 3000000 order by id asc limit $trang,8";   
                                break;
                                case "4":
                                    $sql="select * FROM tbl_product WHERE  price between 3000000 and 4000000 order by id asc limit $trang,8";   
                                break;
                                case "5":
                                    $sql="select * FROM tbl_product WHERE  price >= 5000000 order by id asc limit $trang,8";   
                                break;
                                default:
                                  $sql="select * FROM tbl_product WHERE category like $id order by id asc limit $trang,8";   
                                  break;
                              } 
                        }
                    }else {
                        if (isset($_POST['s-product'])){
                            if ($_POST['s-product'] != ''){
                                $s = $_POST['s-product'];
                                $sql = "select * from tbl_product where id LIKE '%$s%' or name LIKE '%$s%' order by id asc limit $trang,8";
                            }
                        }else{
                            $sql = "SELECT * from tbl_product where category like '%$id%'  limit $trang,8"; 
                        }
                    }
                      $run = mysqli_query($conn, $sql);
                      $i = 0;
                      while ($row = mysqli_fetch_array($run)) {
                        $i++;
                    ;?>
     
     
     
    <article class="one_quarter" style="margin-top: 10px"><a href="#" ><img  src="index.php/../image/product/<?php echo $row['image']?>" alt=""></a>
        <div class="txtwrap">
          <h4 style="text-align: center;" class="heading"><?php echo $row["name"];?></h4>
          <p  style="text-align: center;"><?php echo number_format($row["price"]) ;?>đ</p>
          <table>
          <td><footer><a href="chitietsanpham.php?id=<?php echo $row['id'];?>">Chi tiết &raquo;</a></footer></td>
          <td>
           <footer><a href="chitietsanpham.php?id=<?php echo $row['id'];?>">Mua ngay &raquo;</a></footer></td>
           </table>
        </div>
      </article>
      <?php } ?>
      
    </div>
    <?php
         
            $run_trang = mysqli_query($conn,"select * from tbl_product where category=$id");
            $sosanpham = mysqli_num_rows($run_trang);
            $sotrang = ceil($sosanpham/8);
            if ($sotrang == 0){
                echo 'Không có sản phẩm nào!';
            }
            else{
                echo '';
            
            for($b=1;$b<=$sotrang;$b++){
                echo '<a href="?page=category_product&id='.$id = $_GET['id'].'&trang='.$b.'" style="text-decoration:none">'.''.$b.''.'</a>&ensp;';
            }}
            ?>                      
    <div class="clear"></div>
     
    

  </section>
   
</div>




<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>

<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>