<form action="while.php" method="post">
     <div class="container">
         Input : <input type="number" name="angka" value="">
         <br>
         <button class="tombol" type="submit" name="submit" value="Ok">SUBMIT</button>
    
      </div>
</form>

<?php
if (isset ($_POST['submit'])) {
    
        $i = 1;
        while ($i <= $_POST['angka']) {
            $j = 1;
            while($j <= ($i+1)){
                if ($i % 2 == 1 ){
                    echo '+';
                }else {
                    echo '2';
                }
                $j++;
            }
            echo '<br>';
            $i++;
        }
    
}
