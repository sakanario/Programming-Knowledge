<?php
  if (isset($_POST['submit'])) {
    // var_dump dan print_r memberikan informasi dari suatu variabel
    // print_r lebih simple
    // var_dump($_FILES);
    // echo "<br><br>";
    // print_r($_FILES);
    // die(); menghentikan algoritma dibawahnya dan meng output parameternya
    // mengambil informasi dari $_FILES

    $nama = $_FILES['gambar']['name'];
    $asal = $_FILES['gambar']['tmp_name'];
    $tujuan = 'upload/' . $nama;
    //time() menghasilkan angka random
    $random = time();
    // validasi gambar
    $tipe = $_FILES['gambar']['type'];
    $error = $_FILES['gambar']['error'];
    $ukuran = $_FILES['gambar']['size'];
    //1mb = 1jt byte
    if ($ukuran <= 10000000) {
      if ($error<=0) {
        if ($tipe=='image/jpeg'||$tipe=='image/jpg') {
          //mencegah nama kembar  
          if (file_exists($tujuan)) {
            $tujuan = str_replace('.jpg','',$tujuan);
            $tujuan = $tujuan . $random . '.jpg';
          }
          // fungsi untuk memindahkan filenya
          move_uploaded_file($asal,$tujuan);
          echo "sukses Upload";
        }else {
          echo "tipe file salah";
        }
      }else{
        echo "ada error";
      }
    }else {
      echo "Ukuran file terlalu besar";
    }
  }
 ?>

<form class="" action="index.php" method="post" enctype="multipart/form-data">
  <input type="file" name="gambar" value="">
  <input type="submit" name="submit" value="upload">
</form>
