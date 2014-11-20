<?php
header('Content-Type: text/html; charset=utf-8');
$connect = mysql_connect("127.0.0.1","root","12345") or die(" khong the ket noi");
mysql_select_db("smart_ad");
mysql_query('SET NAMES utf8');
$query=mysql_query("SELECT * FROM s_users");
//$myfile = fopen("user.txt", "w") or die("Unable to open file!");
$i= 1;
while($row=mysql_fetch_array($query))
{
    $txt = $row["uname"].",".$row['upassword'];
    if(isset($row['email'])){
        $txt .= ",".$row['email'];
    }
    echo $i." ".$row["uname"]."<br/>";
    $i++;
}


