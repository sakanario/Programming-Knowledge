<?php
$message = 'still empty';
  if(isset($_POST["submit"])){ //check if form was submitted
    $input = $_POST["jawab"]; //get input text
    $message = "Success! You entered: ".$input;
    echo $message ;
  }
?>

<form class="" action="<?php  $_SERVER["PHP_SELF"]?>" method="post">
  <input type="text" name="jawab" value="">
  <input type="submit" name="submit" value="Answer">
</form>
