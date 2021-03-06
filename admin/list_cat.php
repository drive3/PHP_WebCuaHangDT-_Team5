<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                  <h1>DANH MỤC SẢN PHẨM</h1>
                  <div>
                    <p style="text-align: right;"><a href="add_cat.php" title="" id="add-new" >Thêm mới <span class="glyphicon glyphicon-plus" aria-hidden="true"></span></a></p>
                    <div id="content" class="fl-right">                       
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="table-responsive">
               <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    <td><input type="checkbox" name="checkAll" id="checkAll"></td>
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">ID</span></td>
                                    <td><span class="thead-text">Tên danh mục</span></td>
                                    <td><span class="thead-text">Mô tả</span></td>
                                </tr>
                            </thead>
                            <tbody>
                               <?php
                              // Bước 1: Kết nối đến CSDL
                               include("../config/dbconfig.php");
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
                                    $trang = ($get_trang*9)-9;
                                  }
                               $sql = "select * from tbl_category order by id asc limit $trang,9";
                               $run = mysqli_query($conn, $sql);
                               $i = 0;
                               while ($row = mysqli_fetch_array($run)) {
                                  $i++;
                                  ;?>
                                  <tr>
                                    <td><input type="checkbox" name="checkItem" class="checkItem"></td>
                                    <th scope="row"><?php echo $i;?></th>
                                    <td><span class="tbody-text"><?php echo $row["id"];?></h3></span>
                                        <td class="clearfix">
                                            <div class="tb-title fl-left">
                                                <a href="" title=""><?php echo $row["title"];?></a>
                                            </div> 
                                            
                                        </td>
                                        <td><span class="tbody-text"><?php echo $row["content"];?></span></td>
                                         <td><ul class="list-operation fl-right">
                                                  <td><a href="change_cat.php?id=<?php echo $row['id'];?>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a></td>
                                                 <td><a href="delete_cat.php?id=<?php echo $row['id'];?>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></a></td>
                                            </ul></td>
                                           
                                            
                                    </tr>
                                    <?php
                                }
                                ;?>
                            </tbody>
                              <?php
  $sql_trang = "select * from tbl_category";
  $run_trang = mysqli_query($conn,$sql_trang);
  $sosach = mysqli_num_rows($run_trang);
  $sotrang = ceil($sosach/8);
  if ($sotrang == 0){
    echo ' Không có sách nào!';
  }
  else{
    echo ' Trang:';
  }
  for($b=1;$b<=$sotrang;$b++){
    echo '<a href="?trang='.$b.'" style="text-decoration:none">'.' '.$b.' '.'</a>';
  }
?>
<?php
  echo '</br>';
  if($get_trang >= 1){
    echo ' Trang hiện tại: '.$get_trang;
  }
    if($get_trang == '' && $sotrang >= 1){
    echo ' Trang hiện tại: 1';
  }
?>
                           
                        </table>

                  </div>
                </div>
              </div>
            </div>

           
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