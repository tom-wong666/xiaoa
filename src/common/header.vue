<template>
  <!--头部：简小头部，固定定位-->
  <div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#/">主页</a>
      </div>
      <div class="navbar-collapse collapse" role="navigation">
        <ul class="nav navbar-nav">
          <li><a href="#/game" target="_self">畅爽游戏</a></li>
          <li><a href="#/products" target="_self">物理提神</a></li>
          <li><a href="#/contribute" target="_self">投稿</a></li>
          <li><a href="#/editing" target="_self">音视频剪辑指引</a></li>
          <li><a href="#/signIn" target="_self">登陆</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right hidden-sm">
          <li><a href="#">关于</a></li>
        </ul>
      </div>
    </div>
  </div> 
</template>

<script>
  import 'bootstrap/dist/css/bootstrap.min.css'
  import 'bootstrap/dist/js/bootstrap.min.js'
  //export default不能缺少，即使里面没东西，不然会导致找不到
  export default{
    // name:'MyHeader'
  } 
</script>