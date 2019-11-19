<?php
$link = mysqli_connect('localhost','root','root','sekolah');
// $query = "UPDATE murid SET nama='Satria Laksana Rio' where id=1";
$query = "DROP DATABASE satria";
if (mysqli_query($link,$query)){
  echo "Databbase berhasil dihapus!";
}else{
  echo "Gagal update data.";
}
?>
