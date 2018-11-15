<template>
  <div>
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
          <a class="navbar-brand" href="index.html">主页</a>
        </div>
        <div class="navbar-collapse collapse" role="navigation">
          <ul class="nav navbar-nav">
            <li><a href="xiaoa.html"  target="_blank">趣味资讯</a></li>
            <li><a href="game.html" target="_blank">畅爽游戏</a></li>
            <li><a href="products.html" target="_blank">物理提神</a></li>
            <li><a href="#" target="_blank">投稿</a></li>
            <li><a href="#" target="_blank">音视频剪辑指引</a></li>
            <li><a class="reddot" href="#" target="_blank">登陆</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right hidden-sm">
            <li><a href="#">关于</a></li>
          </ul>
        </div>
      </div>
    </div>  
    <!--主题区域，无限滚动-->
    <div class="main"
      v-infinite-scroll="loadMore" 
      infinite-scroll-disabled="switchForMore" 
      infinite-scroll-distance="20">
      <!--功能块单元-->
      <div v-for="(item,index) of content" class="container">
        <div class="row">
          <!--内容区-->
          <div class="col-xs-12 col-sm-6 col-md-8 content">
            <!--个人信息区-->
            <div class="header">
              <!--<span class="via">{{item.header.via}}</span>-->
              <img class="via" :src="item.header.via"/>
              <span class="nickName">{{item.header.nickName}}</span>
               <span class="gender">{{item.header.gender}}{{item.header.age}}</span>
            </div>
            <!--正文-文字-->
            <article v-if="item.body.article" class="body">{{item.body.article}}</article>
            <!--正文-图片-->
            <div v-if="item.body.img">图片--如果有
              <img src="后台传回地址">
            </div>
            <!--正文-音乐-->
            <div v-if="item.body.audio">音乐--如果有
               <audio controls autoplay loop>
                  <source src="地址1"><source src="地址2"><source src="地址3">
              </audio>            
            </div>
            <!--正文-视频-->
            <div v-if="item.body.video">视频--如果有
               <video controls autoplay loop>
                 <source src="地址1"><source src="地址2"><source src="地址3">
               </video>
            </div>
            <!--评论-->
            <div class="count">{{item.count.viewNum}} 观看  ·  {{item.count.commondNum}} 评论</div>
            <!--功能-->
            <div class="handle">
              <img class="icon" :src="item.handle.happy"/>
              <img class="icon" :src="item.handle.unhappy"/>
              <img class="icon" :src="item.handle.commond"/>
              <img class="icon" :src="item.handle.transpond"/>
             </div>
            <!--评论-->
            <div class="commond-detail">头像 tomwong666：楼主威武</div>
          </div>
          <!--广告位-->
          <div class="col-xs-0 col-sm-0 col-md-4 profit">
            广告位
          </div>
        </div>
      </div>
    </div>
    <!--简略底栏，待拎出来	-->
    <div class="panel panel-default footer">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-6">
            <h3>提神小a</h3>
            <p>我们致力于为大众提供短时提神娱乐平台！</p>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-3">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12"><h4>关于</h4></div>
            </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12"><a href="#" class="text-info">关于我们</a></div>
            </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12"><a href="#" class="text-info">广告合作</a></div>
            </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12"><a href="#" class="text-info">友情链接</a></div>
            </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12"><a href="#" class="text-info">招聘</a></div>
            </div>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-3">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12"><h4>联系方式</h4></div>
            </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12"><a href="#" class="text-info">电子邮箱</a></div>
            </div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12"><a href="#"  class="text-info">微信公众号</a></div>
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
export default {
  data(){
    return{
      content:[],
      switchForMore:false,
      num:1      
    }
  },
  methods:{
    loadMore(){
      alert('触发loadMore'+this.num);
      //数据库目前只有10条数据,mounted时已加载一条了
      if(this.num>9){
        this.switchForMore=true;
        return;  
      }     
      this.fetch();
    },
    async fetch(){
      //数据请求计数
       this.num+=1;
      //请求数据
      const res = await this.$http.post('http://127.0.0.1/main.php?cid='+this.num);
      //定义数据格式
      const contentAdd=[
        {
          header:{
            via:"../../static/img/girl.gif",
            nickName:"tom哥的猫",
            gender:"男",
            age:28,  
          },
          body:{
            article:"",
          },
          count:{
            viewNum:999,
            commondNum:888,
          },
          handle:{
            happy:"../../static/img/happy.png",
            unhappy:"../../static/img/unhappy.png",
            commond:"../../static/img/commond.png",
            transpond:"../../static/img/transpond.png",
          },
          commondDetail:{
            
          },
        },
      ];
      //赋值
      contentAdd[0].body.article=res.data[0].data[0];
      //判断是否是第一次请求
      if(!this.content.length){
        this.content=contentAdd;
      }else{
        this.content=this.content.concat(contentAdd);  
      }
    }
  },
  mounted() {
    this.fetch();
    this.fetch();
    this.fetch();
    this.fetch();
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style lang="less" scoped>
.main{
  margin-top:0.6rem;
  .profit{
    /*待删除的设置*/
    border:1px solid green;
  }
  .content{
    /*待删除的设置*/
    border:1px solid blue;
    .header{
      display:flex;
      justify-content:flex-start;
      align-items:center;
      .via{
        display:inline-block;
        width: 0.15rem;
        height: 0.15rem;
        border-radius: 50%;
        margin-right:0.01rem;
      }
      .nickName{
        color:#9b8878;
        margin-right:0.01rem;
      }
      .gender{
        color:#9b8878;
      }
    }
    .count{
      color:#999;
      font-size:0.06rem;
    }
    .handle{
      .icon{
        width: 0.15rem;
        height: 0.15rem;  
      }
    }
  }
}
</style>
