<form action="faktorial.php" method="get">
     <div class="container">
         Input : <input type="number" name="angka" value="">
         <br>
         <button class="tombol" type="submit" name="submit" value="Ok">SUBMIT</button>
    
      </div>
</form>

<?php

$angka = $_GET['angka'];
$hasil =1;

if (isset($_GET['submit'])) {
    while ($angka >=1){
        
            $hasil = $hasil * $angka;
            
        $angka--;
    }
    echo $hasil;
}


