<?php
$link = mysqli_connect('localhost','root','root','sekolah');
$query = "DELETE FROM murid"; //HAPUS SEMUA table
$query = "DELETE FROM murid WHERE id=4 "; //HAPUS 1 table
$query = "DELETE FROM murid WHERE id IN(4,5) "; //HAPUS 2 TABLE
$query = "DELETE FROM murid WHERE id BETWEEN 3 AND 5 "; //HAPUS BANYAK TABLE

if (mysqli_query($link,$query)){
  echo "Data berhasil dimasukkan!";
}else{
  echo "Gagal memasukkan data.";
}
?>
