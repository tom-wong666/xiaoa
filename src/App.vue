<template>
  <div>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App',
  methods:{
    resizeFontSize(){
      const docEl = document.documentElement;
      const {clientWidth} = docEl;
      if (!clientWidth) return ;
      //设计图以750px为准时，px rem比例为1：100
      const fs= 100*(clientWidth/750) ;
      docEl.style.fontSize = `${fs}px`;
    }
  },
  mounted() {
    this.resizeFontSize();
  },
}
</script>

<style>

</style>
