<?php
$connect = mysql_connect("127.0.0.1","root","12345") or die(" khong the ket noi");
mysql_select_db("smart_ad");
mysql_query('SET NAMES utf8');
$query=mysql_query("SELECT * FROM user");
$i= 1;

while($row =  mysql_fetch_array($query))
{
    $username = $row['username'];
    $insertSql = "INSERT INTO interaction(user_id,app_id,day_click,success,revenue,date) VALUES ";
    $url = "http://smartad.vn/daobv.php?username=BinhNH";
    $data = file_get_contents($url);
    $contents = json_decode($data);
    $contents = (array)($contents);

    $contents = $contents['data'];
    var_dump($contents[0]->ListDate);
    die();
    //$contents = (array)json_decode($contents);
    //$contentsData = $contents['data'];

    foreach($contentsData as $contents){

    }
    $contents = $contents['data'][0];
    $counter = count($contents) - 1;
    $app_id = $contents->AppID;
    $contents = $contents->ListDate;
    $contents = (array)$contents;
   // $contents = $contents['DateInfo'];
    ;
    $counter = count($contents) - 1;
    foreach($contents as $key => $content){
        $click = $content->Click;
        $action = $content->Action;
        $revenue = $content->Price;
        $date = date("ymd",strtotime($content->Date));
        $insertSql .= " ('".$row['id']."','".$app_id."','".$click."','".$action."','".$revenue."','".$date."') ";
        if($key < $counter){
            $insertSql .= ", ";
        }

    }
    var_dump($insertSql);
    die();
    mysql_query($insertSql);

}


//$query=mysql_query($insertSql);

