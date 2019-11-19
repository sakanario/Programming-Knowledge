<?php
$link = mysqli_connect('localhost','root','root','sekolah');

$query = "CREATE TABLE PERALATAN(id INT AUTO_INCREMENT,nama VARCHAR(20) NOT NULL,jumlah int(50),primary key (id))";

if (mysqli_query($link,$query)){
  echo "Table berhasil dibuat!";
}else{
  echo "Gagal update data.";
}
?>
