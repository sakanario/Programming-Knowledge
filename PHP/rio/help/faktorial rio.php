<form action="faktorial.php" method="post">
     <div class="container">
         Input : <input type="number" name="angka" value="">
         <br>
         <button class="tombol" type="submit" name="submit" value="Ok">SUBMIT</button>
    
      </div>
</form>

<?php
if (isset($_POST['submit'])) {

    $nilai = $_POST['angka'];
    $hasil = 1;
    while ($nilai >= 1){
        
        $hasil = $hasil * $nilai; 
        
        $nilai--;
    }
    
    echo $hasil;
}