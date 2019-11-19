<?php
  // $link = mysqli_connect('localhost','root','root','sekolah');
  // mysqli_connect(host , user, password, nama database)
  $link = mysqli_connect('127.0.0.1','root','root','sekolah');

  // mengecek error dalam penyambungan ke database
  if(!$link){
    echo "<br>";
    die('ada error <br>' . mysqli_connect_error());
  }
  // querty untuk membuat database baru
  $query = "CREATE DATABASE satria";
  if( mysqli_query($link,$query) ){
    echo "Database berhasil dibuat!";
  }else{
    echo "Database gagal dibuat!";
  }

  mysqli_close($link);
 ?>
