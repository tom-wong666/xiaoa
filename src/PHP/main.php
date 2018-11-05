<?php
  header('Access-Control-Allow-Origin: http://127.0.0.1:8080');
  $conn=mysqli_connect("127.0.0.1","root","","newxiaoa",3306);
  $sql="SET NAMES UTF8";
  mysqli_query($conn,$sql);
  $cid=$_REQUEST["cid"];
  $find="SELECT content FROM content WHERE cid=$cid AND isDel=0";
  $res=mysqli_query($conn,$find);
  $row=mysqli_fetch_row($res);
  $output=[];
  $output[]=["code"=>200,"data"=>$row];
  echo json_encode($output);