<template>
  <div>
    <my-header></my-header>
    <router-view/>
    <my-footer></my-footer>
  </div>
</template>

<script>
import MyHeader from '@/common/header.vue'
import MyFooter from '@/common/footer.vue'
import { setToken } from '@/utils/handleCookies'
export default {
  components:{MyHeader,MyFooter},
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
    setToken('App添加token')
  },
}
</script>

<style>

</style>
