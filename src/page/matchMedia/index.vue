<template>
  <div class='media' @click="getTips">
  window.matchMedia查询结果提示
  </div>
</template>

<script>
  export default{
    methods:{
      getTips(){
        //点击时验证js提示色是否和如下css设置的一致
        if(window.matchMedia('screen and (min-width:992px)').matches){
          alert("大屏 红色")
        }else if(window.matchMedia('screen and (min-width:768px) and (max-width: 992px)').matches){
          alert("中屏 绿色")
        }else if(window.matchMedia('screen and (max-width: 768px)').matches){
          alert("小屏 蓝色")
        }
      },
    },
  }
</script>

<style lang="less" scoped>
  @media  screen and (min-width:992px){
    .media{
      color:red;  
    }
  }
  @media  screen and (min-width:768px) and (max-width: 992px){
    .media{
      color:green;  
    }
  }
  @media  screen and (max-width: 768px){
    .media{
      color:blue;  
    }
  }    
</style>