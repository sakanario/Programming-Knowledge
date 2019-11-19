<?php
$link = mysqli_connect('localhost','root','root','sekolah');
$query = "UPDATE murid SET nama='Satria Laksana Rio',umur=20 where id=1";

if (mysqli_query($link,$query)){
  echo "Data berhasil diupdate!";
}else{
  echo "Gagal update data.";
}
?>
