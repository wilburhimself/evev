<?php
function years() {
            $data['years'] = array(2009 => 2009, 2010 => 2010, 2011 => 2011);
            return $data['years'];
        }
        function months() {
            $data['months'] = array(1 => 'Enero',
                                    2 => 'Febrero',
                                    3 => 'Marzo',
                                    4 => 'Abril',
                                    5 => 'Mayo',
                                    6 => 'Junio',
                                    7 => 'Julio',
                                    8 => 'Agosto',
                                    9 => 'Septiembre',
                                    10 => 'Octubre',
                                    11 => 'Noviembre',
                                    12 => 'Diciembre');
            return $data['months'];
        }
        function days() {
            $data['days'] = array(1 => 1,
                                  2 => 2,
                                  3 => 3,
                                  4 => 4,
                                  5 => 5,
                                  6 => 6,
                                  7 => 7,
                                  8 => 8,
                                  9 => 9,
                                  10 => 10,
                                  11 => 11,
                                  12 => 12,
                                  13 => 13,
                                  14 => 14,
                                  15 => 15,
                                  16 => 16,
                                  17 => 17,
                                  18 => 18,
                                  19 => 19,
                                  20 => 20,
                                  21 => 21,
                                  22 => 22,
                                  23 => 23,
                                  24 => 24,
                                  25 => 25,
                                  26 => 26,
                                  27 => 27,
                                  28 => 28,
                                  29 => 29,
                                  30 => 30,
                                  31 => 31);
            return $data['days'];
        }
        
        
        function hours() {
            $data['hours'] = array(1 => 1,
                                  2 => 2,
                                  3 => 3,
                                  4 => 4,
                                  5 => 5,
                                  6 => 6,
                                  7 => 7,
                                  8 => 8,
                                  9 => 9,
                                  10 => 10,
                                  11 => 11,
                                  12 => 12,
                                  13 => 13,
                                  14 => 14,
                                  15 => 15,
                                  16 => 16,
                                  17 => 17,
                                  18 => 18,
                                  19 => 19,
                                  20 => 20,
                                  21 => 21,
                                  22 => 22,
                                  23 => 23,
                                  24 => 24,);
            return $data['hours'];
        }
        function minutes() {
            $data['minutes'] = array('00' => '00', '15' => 15, '30' => 30, '45' => 45);
            return $data['minutes'];
        }
        
        function display_date($date) {
            return date('\e\l d \d\e M \a \l\a\s H:i', $date);
        }

        function interval_to_now($date) {
            $d1 = strtotime($date);
            $d2 = time();
            $result = $d2 - $d1;

            $days = ceil($result / 86400);
            return $days;
        }

function timeformat($format, $time) {
    $formats = array(
        'short' => '%A %d, %B %Y',
        'long' => '%A %d de %B a las %I:%M %p',
        'datetime' => '%Y-%m-%d %H:%M:%S',
        'date' => '%Y-%m-%d',
        'hour' => '%H:%M',
    );
    return htmlentities(strftime($formats[$format], strtotime($time)));
}

function timepicker() {
    $y = date('Y');
    $years = range($y - 1, $y + 3);
    $u =array();
    foreach($years as $e) {
        $u[$e] = $e;
    }
    $output = form_label('Fecha').form_dropdown('year', $u);
    $months = array(
        1 => 'Enero',
        2 => 'Febrero',
        3 => 'Marzo',
        4 => 'Abril',
        5 => 'Mayo',
        6 => 'Junio',
        7 => 'Julio',
        8 => 'Agosto',
        9 => 'Septiembre',
        10 => 'Octubre',
        11 => 'Noviembre',
        12 => 'Diciembre'
    );
    $output .= form_dropdown('month', $months);
    $days = range(1, 31);
    $u =array();
    foreach($days as $e) {
        $u[$e] = $e;
    }
    $output .= form_dropdown('day', $u);
    $output .= '<br />';
    $hours = range(1, 12);
    $u =array();
    foreach($hours as $e) {
        $u[$e] = $e;
    }
    $output .= form_label('Hora').form_dropdown('hour', $u);
    $u =array();
    $minute = array('00', '15', '30', '45');
    foreach($minute as $e) {
        $u[$e] = $e;
    }
    $output .= form_dropdown('minute', $u);

    return $output;
}

function interval($object) {
        $day = 86400;
        $interval = strtotime($object->enddate) - strtotime($object->startdate);
        $days = ceil($interval / $day);

        print ceil($days / 7).' semanas';
}

function hour_greet() {
    $hour = date('G');
    if ($hour < 11) {
        return 'Buenos d&iacute;as';
    } else if($hour > 11 and $hour < 18) {
        return 'Buenas tardes';
    } else {
        return 'Buenas noches';
    }
}


function todaySplit($datein){
        $datein =  explode(' ', $datein);
        $datein =  explode('-', $datein[0]);
        $today = date('d');
        $month = date('m');
        $year = date('Y');
                
         if(($today == $datein[2]) AND ($month == $datein[1]) AND ($year == $datein[0]))
            return TRUE;
         else
            return FALSE;
}

?>