<?php

include 'Jepang/person.php';
include 'Indonesia/Jawa/person.php';
use \Indonesia\Jawa\person as indo;
use \Jepang\person as weebs;
//tono, orang Indonesia
$tono = new indo;
$tono->talk();

echo '<br />';

//Hikaru, orang Jepang
$Hikaru = new weebs;
$Hikaru->talk();
