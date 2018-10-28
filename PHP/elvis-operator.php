<?php
// elvis (ternary) operator
// https://en.wikipedia.org/wiki/Elvis_operator#Languages_supporting_the_Elvis_operator
// https://en.wikipedia.org/wiki/Elvis_operator#Analogous_use_of_the_short-circuiting_OR_operator
$var = $_SERVER['HTTP_CLIENT_IP']?:($_SERVER['HTTP_X_FORWARDE‌​D_FOR']?:$_SERVER['REMOTE_ADDR']);
?>