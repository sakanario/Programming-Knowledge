<title>Membuat kelas dan Objek</title>

<p>
Untuk memudahkan mempelajari Object Oriented Programming, kita akan menganalogikannya dengan anatomi manusia.

Dalam OOP ada istilah class, data dalam class, dan Objek.
Hal-hal tersebut bisa dianalogikan seperti dna, basa nitrogen, dan manusia.

Class dianalogikan sebagai dna, didalam class semua informasi tentang objek tersimpan.
Data dalam class dianalogikan seperti susunan basa nitrogen, data ini mengandung semua informasi tentang objek seperti warna kulitnya dan semua fungsi-fungsi objek yang bisa dilakukan.
Objek dianalogikan seperti manusia, objek adalah representasi dari seluruh informasi dari dna.  </p>

<?php
  class persegiPanjang{
    //mendeklarasi properti;
    private $panjang;
    private $lebar;

    public function setNilai($p,$l){
      $this->panjang = $p;
      $this->lebar = $l;
    }

    public function getPanjang(){
      return $this->panjang;
    }

    public function getLebar(){
      return $this->lebar;
    }

    public function hitungLuas(){
      return $this->panjang * $this->lebar;
    }

    public function cetakLuas(){
      echo "Luas persegi panjang = " . $this->hitungLuas() . "<br>";
    }
  }

  //membuat obbjek
  $objek1 = new persegiPanjang;
  $objek2 = new persegiPanjang;

  //mengisi nilai
  $objek1->setNilai(5,3);
  $objek2->setNilai(2,10);

  //menampilkan luas
  $objek2->cetakLuas();

 ?>
