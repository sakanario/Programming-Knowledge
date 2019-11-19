<form action="kelulusan.php" method="get">
     <div class="container">
         tugas : <input type="number" name="tugas" value="">
         uts : <input type="number" name="uts" value="">
         uas : <input type="number" name="uas" value="">
         <br>
         <button class="tombol" type="submit" name="submit" value="Ok">SUBMIT</button>
    
      </div>
</form>

<?php

if (isset($_GET['submit'])) {
	
	$tugas = $_GET ['tugas'];
	$uts = $_GET ['uts'];
	$uas = $_GET  ['uas'];

	$hasil_akhir = (0.3 * $tugas)+(0.35 * $uts)+(0.35 * $uas);
	if ($hasil_akhir <= 60){ 
		echo "tidak lulus";
	}
	else if ($hasil_akhir >= 61 && $hasil_akhir < 81 ){
		echo "lulus bersyarat";
	}
	else if ($hasil_akhir >= 81){
		echo "lulus";
	}

	echo " <br>";

	echo"hasil Akhir : $hasil_akhir<br><br>";



}