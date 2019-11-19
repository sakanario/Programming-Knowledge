<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
	<title>PHP</title>
  </head>
  <body>
    
	
	
	<?php 
		echo "<h1>Sekolah Koding</h1> 
		Hallo Semuanya! <br><br>";
		
		echo "Code html bisa di dalam tanda kutip php,
		<br> tapi gabisa kalo diluar tanda kutip";
		/*echo "<br><br>terus gimana kalo mau ngetik code html sebagai kalimat 
 		bukan sebagai code?";
		echo "<br>gunakan [unknown] untuk menulis teks aslinya bukan fungsinya,
		contoh " ;*/
		
		echo "<br><br>Spasi di html maupun php hanya satu yang dibaca.
		<br> Artinya meskipun kita mengetik banyak spasi, 
		hanya 1 spasi yang akan muncul di tampilan.<br><br>";
		
		//Variabel 
		$x = "Ini variabel x";
		$y = "ini variabel y";
		echo $x;
		echo"<br>".$x;
		echo "<br>".$x." ". $y;
		echo "<br>note : titik mirip kaya + di java";
		
		echo "<br><br>\$x
		<br>note : Gunakan \ untuk menulis teks asli dari variabel";
		
		echo "<h2>Variabel Angka</h2>";
		$int = 10;
		$float = 0.12;
		echo "variabel \$int : $int <br>
		variabel \$float : $$float";
		echo "<br> hasil jumlahnya adalah : ";
		echo $int + $float;
		
		echo "<br>";
		echo 2 + 5;
	?>
  
  </body>
</html>

























