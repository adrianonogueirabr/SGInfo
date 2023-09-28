<?php
$date = new DateTime("now", new DateTimeZone("America/Sao_Paulo"));
print $date->format("H:i:s");
?>