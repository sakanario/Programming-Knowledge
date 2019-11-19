<?php
$angka = 5;
$hasil = 1;

while($angka >= 1){
    if ($angka > 0 ) {
        $hasil = $hasil * $angka;
    }
    $angka--;
}

echo $hasil;