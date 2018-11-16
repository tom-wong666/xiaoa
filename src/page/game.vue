<template>
  <div>
    <!--游戏板块的页头介绍-->
    <div class="container intro">
      <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
          <div class="page-header" style="text-align: center">
            <h1>Game索引</h1>
            <p>无需安装，点开即玩，激情畅爽，完全免费！</p>
          </div>
        </div>
      </div>
    </div>
    <!--逐个游戏介绍-->
    <div>
      <div class="container six">
        <div class="row">
          <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="@/assets/gameImg/aircraft.png">
              <div class="caption">
                <h3>飞机大战</h3>
                <p>设备支持：支持电脑，平板，手机！</p>
                <p>操作方法：鼠标或者手指按压移动飞机消灭敌机，经典模式，畅爽暴击！</p>
                <p><a href="./static/game/aircraftWar/index.html" class="btn btn-primary" role="button" target="_blank">去玩</a></p>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-4">
            <div class=" thumbnail">
              <img src="@/assets/gameImg/allMustLive.png">
              <div class="caption">
                <h3>一个都不能死</h3>
                <p>设备支持：支持电脑，平板，手机！</p>
                <p>操作方法：鼠标或者手指点击小人运动区域进行跳跃，避开障碍物，炼狱模式挑战手速！</p>
                <p><a href="./static/game/allMustLive/index.html" class="btn btn-primary" role="button" target="_blank">去玩</a></p>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-4">
            <div class=" thumbnail">
              <img src="@/assets/gameImg/beatTheBox.png">
              <div class="caption">
                <h3>甩击箱子</h3>
                <p>设备支持：支持电脑，平板，手机！</p>
                <p>操作方法：鼠标或手指选中要甩的箱子，拖动并甩出箱子，有惊喜！</p>
                <p><a href="./static/game/beatTheBox/index.html" class="btn btn-primary" role="button" target="_blank">去玩</a></p>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-4">
            <div class=" thumbnail">
              <img src="@/assets/gameImg/gobang.png">
              <div class="caption">
                <h3>五子棋</h3>
                <p>设备支持：支持电脑，平板，手机！</p>
                <p>操作方法：鼠标或手指选中落棋位置，五个棋子连成一串即获胜！</p>
                <p><a href="./static/game/gobang/index.html" class="btn btn-primary" role="button" target="_blank">去玩</a></p>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-4">
            <div class="thumbnail">
              <img src="@/assets/gameImg/goldMiner.png">
              <div class="caption">
                <h3>黄金矿工</h3>
                <p>设备支持：支持电脑，平板，手机！</p>
                <p>操作方法：鼠标或手指点击触发钩子落下挖取黄金，黄金矿脉等你来挖！</p>
                <p><a href="./static/game/goldMiner/index.html" class="btn btn-primary" role="button" target="_blank">去玩</a></p>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 col-md-4">
            <div class=" thumbnail">
              <img src="@/assets/gameImg/linkLink.png">
              <div class="caption">
                <h3>美女连连看</h3>
                <p>设备支持：支持电脑，平板，手机！</p>
                <p>操作方法：鼠标或手指依次点击两个相同的美女，将美女从图中释放，可人儿等你来拯救！</p>
                <p><a href="./static/game/linkLink/index.html" class="btn btn-primary" role="button" target="_blank">去玩</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
	  </div>  
  </div>
</template>

<script>
import 'bootstrap/dist/css/bootstrap.min.css'
import 'bootstrap/dist/js/bootstrap.min.js'
//export default不能缺少，即使里面没东西，不然会导致找不到
export default{
} 
</script>