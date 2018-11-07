<?php
  //允许跨域请求
  header('Access-Control-Allow-Origin:*');
  //链接数据库
  $conn=mysqli_connect("127.0.0.1","root","","newxiaoa",3306);
  //设置数据库字符集
  $sql="SET NAMES UTF8";
  //链接数据库并设置
  mysqli_query($conn,$sql);
  //获取前台发来的cid
  $cid=$_REQUEST["cid"];
  //定义查询语句
  $find="SELECT content FROM content WHERE cid=$cid AND isDel=0";
  //执行查询语句
  $res=mysqli_query($conn,$find);
  //抓取查询到的信息
  $row=mysqli_fetch_row($res);
  //定义返回值并赋值和抛出
  $output=[];
  $output[]=["code"=>200,"data"=>$row];
  echo json_encode($output);