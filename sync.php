<?php
$connect = mysql_connect("127.0.0.1","root","12345") or die(" khong the ket noi");
mysql_select_db("smart_ad");
mysql_query('SET NAMES utf8');
$query=mysql_query("SELECT * FROM s_users");
$i= 1;
$insertSql = "INSERT INTO(username,app_name,click,action,date) VALUES ";
while($row=mysql_fetch_array($query))
{
    $url = "http://smartad.vn/report?username=".$row['username'];
    $data = file_get_contents($url);
    $contents = json_decode($data);
    $counter = count($contents);
    foreach($contents as $key => $content){
        $username = $row['username'];
        $appName = $content['app_name'];
        $click = $content['click'];
        $action = $content['action'];
        $time = date('ymd',strtotime($content['date']));
        $insertSql .= " ('".$username."','".$appName."','".$click."','".$action."','".$time."') ";
        if($key < $contents){
            $insertSql .= ", ";
        }
    }
}
$query=mysql_query($insertSql);

