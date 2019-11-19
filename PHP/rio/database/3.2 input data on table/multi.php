<?php
$link = mysqli_connect('localhost','root','root','sekolah');

// mysqli_multi_query($link,$query
$query = "INSERT INTO murid(nama, umur, alamat) VALUES ('Mahmud',19,'Ambon'); ";
// note : harus ada tanda titik koma setelah tutup kurung

$query .= "INSERT INTO murid(nama, umur, alamat) VALUES ('Jaka',19,'Bandung')";

if (mysqli_multi_query($link,$query)){
  echo "Data berhasil dimasukkan!";
}else{
  echo "Gagal memasukkan data.";
}
?>
