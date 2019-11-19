<?php
$link = mysqli_connect('localhost','root','root','sekolah');

$query = "INSERT INTO murid(nama, umur, alamat) VALUES ('Mahmud',19,'Ambon') ";

if (mysqli_query($link,$query)){
  echo "Data berhasil dimasukkan!";
}else{
  echo "Gagal memasukkan data.";
}
?>
