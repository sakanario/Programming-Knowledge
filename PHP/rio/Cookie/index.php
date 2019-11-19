<?php
if(isset($_POST['submit'])){
  setcookie('nama_user',$_POST['nama'],time()+120);
  header('Location:output.php');
}
 ?>
<form class="" action="index.php" method="post">
  <input type="text" name="nama" value="">
  <input type="submit" name="submit" value="OKE">
</form>
