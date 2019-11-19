<?php
//Untuk mengecek jumlah Baris (kotak kekanan)
// $link = mysqli_connect('127.0.0.1','root','root','sekolah');
// echo mysqli_field_count($link);
//OUTPUT INTEGER

//UNTUK MENGECEK JUMLAH KOLOM/ROW (KOTAK KEBAWAH)
$link = mysqli_connect('127.0.0.1','root','root','sekolah');
$query = "SELECT * FROM murid";
$hasil = mysqli_query($link,$query);
echo mysqli_num_rows($hasil); //OUTPUT INTEGER

// mysqli_num_rows(mysqli_query($link,$query))
 ?>
