<?php
$link = mysqli_connect('localhost','root','root','sekolah');

$query = "DROP TABLE PERALATAN";

if (mysqli_query($link,$query)){
  echo "Table berhasil dihapus!";
}else{
  echo "Gagal update data.";
}
?>
