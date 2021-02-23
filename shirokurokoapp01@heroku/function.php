<?php

/*author:しろくろこ*/
function e(string $str,string $charset='utf-8'): string {
    return htmlspecialchars($str,ENT_QUOTES|ENT_HTML5,$charset);
}

function nametosum(string $str) {
    $name = mb_str_split($str);
    $sum = 0;
    foreach($name as $char) {
        if (mb_detect_encoding($char,"ASCII")) {
            $sum += ord($char);
        } else {
            $code = mb_convert_encoding($char,"HTML-ENTITIES", 'UTF-8');
            $num = str_replace ( ["&","#",";"] , "",$code);
            $sum += (int)$num;
        }
    }
    return $sum;
}

function datetosum(string $str) {
    $date = str_replace ( ["/"] , "",$str);
    $num = (int)$date;
    $sum = 0;
    while ($num>0) {
        $sum += $num%10;
        $num /= 10;
    }
    return $sum;
}