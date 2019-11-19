<?php

if (isset($_GET['submit'])) {
    # code...
    $hasil = 0;
    $awal = $_GET['awal'];
    $akhir = $_GET['akhir'];
    while($awal <= $akhir){
        if ($awal % 2 == 0 && $awal % 3 == 0 ) {
            echo $awal . "<br>";
            $hasil = $hasil + $awal;
        }
        $awal++;
    }
    echo "HASIL ADALAH : " . $hasil;
}

