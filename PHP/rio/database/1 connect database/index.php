<?php
  // $link = mysqli_connect('localhost','root','root','sekolah');
  // mysqli_connect(host , user, password, nama database)
  $link = mysqli_connect('127.0.0.1','root','root','sekolah');

  if(!$link){
    echo "<br>";
    die('ada error <br>' . mysqli_connect_error());
  }

  mysqli_close($link);
 ?>
