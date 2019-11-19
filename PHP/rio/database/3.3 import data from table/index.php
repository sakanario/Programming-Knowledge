<?php
  // $link = mysqli_connect('localhost','root','root','sekolah');
  // mysqli_connect(host , user, password, nama database)
  $link = mysqli_connect('127.0.0.1','root','root','Sekolah');

  if(!$link){
    echo "<br>";
    die('ada error <br>' . mysqli_connect_error());
  }

// ==========================FILTERING DATA===============================
// filter : LIMIT , ORDER , WHERE
  $query = "SELECT * FROM murid";

  // $query = "SELECT * FROM murid LIMIT 1";
  // MAKA NANTI CUMA SATU KOLOM YANG KELUAR

  // $query = "SELECT * FROM murid ORDER BY id DESC";
  // desc untuk biar dipanggilnya dari bawah. note: kalo ga ditulis otomatis order by id asc

  // $query = "SELECT * FROM murid WHERE id = 1";
  // UNTUK NGAMBIL BARIS YANG MEMILIKI KARAKTERISTIK DATA TERTENTU

  //PENYAJIANNYA
  $hasil = mysqli_query($link,$query);
  $data = mysqli_fetch_assoc($hasil);
  print_r($data);
  //Output : Array ( [id] => 1 [nama] => Satria Laksana Rio [umur] => 19 [alamat] => Bekasi )
  //note : cuma kolom teratas yang ditampilin

  if ( mysqli_num_rows($hasil) > 0 ){

    while ($data = mysqli_fetch_assoc($hasil)) {
      echo "Nama : " . $data['nama'] . "<br>";
      echo "Umur : " . $data['umur'] . "<br>";
      echo "Alamat : " . $data['alamat'] . "<br>";
      echo "<br>";
    }
  }

  mysqli_close($link);
 ?>
