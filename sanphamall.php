<?php
include('header.php') ?>
  
<div class="wrapper row3">
   
    
     
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
    $trang = ($get_trang*9)-9;
  }
  $sql_all = "select * from tbl_product limit $trang,9";
  $run_all = mysqli_query($conn,$sql_all);
?>
 
    <div class="sectiontitle">
      <h6 class="heading">Sản phẩm </h6>
      <p>Toàn bộ sản phẩm </p>
    </div>
   
    <div class="group elements" style="width: 1200px">
      
        <?php
         $sql = "select * from tbl_product order by id asc limit $trang,9";
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
    <?php
  $sql_trang = "select * from tbl_product";
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
    <div class="clear"></div>
     
    

  </section>
   
</div>




<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>

<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>