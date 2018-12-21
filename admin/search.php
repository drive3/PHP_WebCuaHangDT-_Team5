<!DOCTYPE html>

<html>
<head>
<title>Mudcappro</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    
    <div id="logo" class="fl_left">
      <h1><a href="index.php">QUANGHIEN</a></h1>
    </div>
    <div id="quickinfo" class="fl_right">
      <ul class="nospace inline">
        <li><strong>HOTLINE:</strong><br>
          +0974560838 </li>
         <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Nhập từ khóa tìm kiếm" aria-label="Search" name="s">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"  ><a href="search_page_perform.php">Search</a></button>
    </form>
      </ul>

    </div>
      
  </header>
</div>

<div class="bgded overlay" style="background-image:url('images/demo/backgrounds/x.jpg');"> 
 
  <div class="wrapper row2">
    <nav id="mainav" class="hoc clear"> 
      
      <ul class="clear">
        <li class="active"><a href="index.php" style="color: white">TRANG CHỦ</a></li>
        <li><a class="drop" href="sanphamall.php" style="cursor: pointer;">Sản phẩm</a>
         
           
              <ul>
                <?php
                              // Bước 1: Kết nối đến CSDL
                                include("config/dbconfig.php");

                              //Bước 2: Hiển thị các dữ liệu trong bảng ra đây
                               $sql = "select * from tbl_category";
                               $run = mysqli_query($conn,$sql);
                                $i = 0;
                                while ($row = mysqli_fetch_array($run)) {
                                  $i++;
                                  ;?>
               
                <li><a  href="chitietloaisanpham.php?id=<?php echo $row['id'];?>"><?php echo $row["title"];?></a></li>
              <?php
                  }
                  ;?>
              </ul>
            
       
           
          
        </li>
        <li><a href="tinmoi.php">Tin tức</a>
          
        </li>
        <li><a href="khuyenmai.php">Khuyến mãi</a></li>
        <li><a href="hotro.php">Hỗ trợ</a></li>
         <li>

                            <div id="cart-wp" class="fl-right">
                                <a href="?page=cart" title="" id="btn-cart">
                                    <i class="fa fa-shopping-basket"></i>
                                    <span id="num">5</span>
                                </a>
                            </div> </li>
       
      </ul>
      
    </nav>
  </div>
  
  <div id="pageintro" class="hoc clear"> 
    
    <div class="flexslider basicslider">
      <ul class="slides">
         <?php
                              // Bước 1: Kết nối đến CSDL
                                include("config/dbconfig.php");

                              //Bước 2: Hiển thị các dữ liệu trong bảng ra đây
                               $sql = "select * from tbl_category";
                               $run = mysqli_query($conn,$sql);
                                $i = 0;
                                while ($row = mysqli_fetch_array($run)) {
                                  $i++;
                                  ;?>
        <li>
          <article>
           
            <p>Sảm phẩm mới</p>
            <h3 class="heading"><?php echo $row["title"];?></h3>
            <p>Cập nhập sản phẩm mới nhất từ <?php echo $row["title"];?></p>
            <footer><a class="btn"  href="chitietloaisanpham.php?id=<?php echo $row['id'];?>">Bắt đầu</a></footer>
             
          </article>
        </li>
      
       <?php
                  }
                  ;?>
      </ul>
    </div>
    
  </div>
 
</div>
  
<div class="wrapper row3">
   
    
     
  <section class="hoc container clear"> 
   

 
    <div class="sectiontitle">
      <h6 class="heading">Sản phẩm </h6>
      <p>Toàn bộ sản phẩm </p>
    </div>
   
    <div class="group elements">
       <?php
                              // Bước 1: Kết nối đến CSDL
                                include("../config/dbconfig.php");
 
                              if (isset($_POST['s'])) {
                                    if ($_POST['s'] != '') {
                                    $s = $_POST['s'];
                                    $sql = "select * from tbl_product where id LIKE '%$s%' or name LIKE '%$s%' order by id asc";
                                    }
                                }else{
                                    $sql = "select * from tbl_product order by id asc"; 
                                    }
                              //Bước 2: Hiển thị các dữ liệu trong bảng ra đây
                                
                                $run = mysqli_query($conn, $sql);
                                $i = 0;
                                while ($row = mysqli_fetch_array($run)) {
                                  $i++;
                                  ;?>
       
     
     
     
      <article class="one_quarter" style="margin-top: 10px"><a href="#" ><img  src="index.php/../image/product/<?php echo $row['image']?>" alt=""></a>
        <div class="txtwrap">
          <h4 class="heading"><?php echo $row["name"];?></h4>
          <p><?php echo $row["price"];?></p>
          <footer><a href="chitietsanpham.php?id=<?php echo $row['id'];?>">Read More &raquo;</a></footer>
        </div>
      </article>
      <?php } ?>
      
    </div>
   
    <div class="clear"></div>
     
    

  </section>
   
</div>


<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>

<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>