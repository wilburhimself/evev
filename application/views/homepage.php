<?php
    $month = date('m');
    $counter = 3;

    for($i=0; $i<3; $i++) {
        $events = search(array(
                           'type' => 'event',
                           'conditions' => array(
                              'MONTH(f.startdate)='.date("m", time() + ($i * 30 * 24 * 60 * 60)),
                           ),
                           'order' => array(
                               'f.startdate' => 'ASC'
                           )
                      ));

        if (!empty($events)) {
            print '<div class="month-bar"><h1>'.strftime('%B', time() + ($i * 30 * 24 * 60 * 60)).'</h1></div>';
            print partial_collection($events, 'events/_item', array('object_name' => 'event'));
        }

    }
?>