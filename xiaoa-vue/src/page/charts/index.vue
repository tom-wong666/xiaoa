<template>
  <div>
    <!--chart标签就是画布元素，设置chart的宽和高可以改变画布大小-->
    <!--options绑定的数据实际配置项，对应echarts实例中的option后面的对象-->
    <chart :options='bar' :style="{width: '300px', height: '300px'}"></chart>
  </div>
</template>

<script>
export default{
  data(){
      return {
        bar:{
          color: ['#3398DB'],
          tooltip : {
              trigger: 'axis',
              axisPointer : {            
                  type : 'shadow'       
              }
          },
          grid: {
              left: '3%',
              right: '4%',
              bottom: '3%',
              containLabel: true
          },
          xAxis : [
              {
                  type : 'category',
                  data : ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                  axisTick: {
                      alignWithLabel: true
                  }
              }
          ],
          yAxis : [
              {
                  type : 'value'
              }
          ],
          series : [
              {
                  name:'直接访问',
                  type:'bar',
                  barWidth: '60%',
                  data:[10, 52, 200, 334, 390, 330, 220]
              }
          ]
        } 
      }
  },      
  mounted(){
  },
  methods:{
  },
}
</script>