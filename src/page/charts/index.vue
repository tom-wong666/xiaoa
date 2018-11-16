<template>
    <div class="line" id="line" :style="{width: '300px', height: '300px'}"></div>
</template>

<script>
    export default{
        mounted(){
            //调用方法绘制图表
            this.drawLine();
        },
        methods:{
            drawLine(){
                //为charts选定父容器并初始化charts画布
                let myChart = this.$echarts.init(document.getElementById('line'));
                //为图表添加数据
                myChart.setOption({
                    xAxis: {
                        type: 'category',
                        data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: [820, 932, 901, 934, 1290, 1330, 1320],
                        type: 'line'
                    }]
                })                
            }
        },
    }
</script>