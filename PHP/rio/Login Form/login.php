<?php
  $rahasia = '123';
  // $username = "satria";

  if (isset ($_POST['submit'])) {
    if($_POST ['pass'] == $rahasia ){
      header('Location:profil.php?nama=' . $_POST['nama']);
    }else{
      // echo "login gagal";
    //   echo '<script type="text/javascript">',
    //   'alert("login gagal");',
    // '</script>'; //bisa juga pake koma komaan kaya gini
    echo "<script>alert('masukin password yang bener')</script>";//harus pakai kutip satu untuk bagian dalamnya
    }
  }
 ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>


<link rel="stylesheet" href="anu.css" />
<form action="login.php" method="post" >
  <div class="mid">
    <h1>FORM LOGIN</h1>
  </div>
  <div class="container">
     Username : <input type="text" name="nama" value="">
     Passwords : <input type="password" name="pass" value="">
     <br>
     <button class="tombol" type="submit" name="submit" value="Pap Itunya">SUBMIT</button>

  </div>

  <div class="bawah">
      <span class="lupa"><a href="#">Lupa Password?</a></span>
  </div>
</form>

</body>
</html>
