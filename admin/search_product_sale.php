
 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>Trang Quản Trị Cửa Hàng</title>

    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <link href="../vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <link href="../vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <link href="../build/css/custom.min.css" rel="stylesheet">
  </head>
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <?php include("top.php");?>

            <div class="right_col" role="main">
              <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                  <h1>SẢN PHẨM</h1>
                  <div>
                    <p style="text-align: right;"><a href="add_product_sale.php">Thêm mới <span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></p>
                      <form class="form-inline" enctype="multipart/form-data" method="post">
                      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="s">
                      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Search</button>
                    </form>
                   
                 <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    <td><input type="checkbox" name="checkAll" id="checkAll"></td>
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">ID</span></td>
                                    <td><span class="thead-text">Mã sản phẩm</span></td>
                                    <td><span class="thead-text">Hình ảnh</span></td>
                                    <td><span class="thead-text">Tên sản phẩm</span></td>
                                    <td><span class="thead-text">Giá</span></td>
                                    <td><span class="thead-text">Danh mục</span></td>
                                     <td><span class="thead-text">Chi tiết</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                              // Bước 1: Kết nối đến CSDL
                                include("../config/dbconfig.php");
                               

                              //Bước 2: Hiển thị các dữ liệu trong bảng ra đây
                                if (isset($_POST['s'])) {
                                    if ($_POST['s'] != '') {
                                    $s = $_POST['s'];
                                    $sql = "select * from tbl_product_sale where id LIKE '%$s%' or name LIKE '%$s%' order by id asc";
                                    }
                                    }else{
                                    $sql = "select * from tbl_product_sale order by id asc"; 
                                    }
                                $run = mysqli_query($conn, $sql);
                                $i = 0;
                                while ($row = mysqli_fetch_array($run)) {
                                  $i++;
                                  ;?>
                                <tr>
                                    <td><input type="checkbox" name="checkItem" class="checkItem"></td>
                                    <th scope="row"><?php echo $i;?></th>
                                    <td><span class="tbody-text"><?php echo $row["id"];?></h3></span>
                                    <td><span class="tbody-text"><?php echo $row["masp"];?></h3></span>
                                    <td>
                                        <div class="tbody-thumb">
                                            <img width="100px" src="index.php/../../image/product/<?php echo $row['image']?>" alt="">.
                                        </div>
                                    </td>
                                    <td class="clearfix">
                                        <div class="tb-title fl-left">
                                            <a href="" title=""><?php echo $row["name"];?></a>
                                        </div>
                                       
                                    </td>
                                    <td><span class="tbody-text"><?php echo $row["price"];?></span></td>
                                    <td><span class="tbody-text"><?php echo $row["category"];?></span></td>
                                    <td><span class="tbody-text"><?php echo $row["chitiet"];?></span></td>
                                    <td><ul class="list-operation fl-right">
                                                  <td><a href="change_product_sale.php?id=<?php echo $row['id'];?>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
                                                 <td><a href="delete_product_sale.php?id=<?php echo $row['id'];?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
                                            </ul></td>
                                </tr>
                                  <?php
                              }
                              ;?>
                            </tbody>
                          
                            <thead>
                                <tr>
                                    <td><input type="checkbox" name="checkAll" id="checkAll"></td>
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">ID</span></td>
                                    <td><span class="thead-text">Mã sản phẩm</span></td>
                                    <td><span class="thead-text">Hình ảnh</span></td>
                                    <td><span class="thead-text">Tên sản phẩm</span></td>
                                    <td><span class="thead-text">Giá</span></td>
                                    <td><span class="thead-text">Danh mục</span></td>
                                    <td><span class="thead-text">Chi tiết</span></td>
                                </tr>
                            </thead>
                        </table>

                  </div>
                </div>
              </div>
            </div>
            <!-- /page content -->

            <?php include("bottom.php");?>
      </div>
    </div>

    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
   
    <script src="../vendors/fastclick/lib/fastclick.js"></script>

    <script src="../vendors/nprogress/nprogress.js"></script>
   
    <script src="../vendors/Chart.js/dist/Chart.min.js"></script>
    
    <script src="../vendors/gauge.js/dist/gauge.min.js"></script>
  
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    
    <script src="../vendors/iCheck/icheck.min.js"></script>
   
    <script src="../vendors/skycons/skycons.js"></script>
   
    <script src="../vendors/Flot/jquery.flot.js"></script>
    <script src="../vendors/Flot/jquery.flot.pie.js"></script>
    <script src="../vendors/Flot/jquery.flot.time.js"></script>
    <script src="../vendors/Flot/jquery.flot.stack.js"></script>
    <script src="../vendors/Flot/jquery.flot.resize.js"></script>
    
    <script src="../vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="../vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="../vendors/flot.curvedlines/curvedLines.js"></script>
   
    <script src="../vendors/DateJS/build/date.js"></script>
   
    <script src="../vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="../vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="../vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>

    <script src="../build/js/custom.min.js"></script>
  
  </body>
</html>