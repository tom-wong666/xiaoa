<template>
  <div
    class="chart-table">
    <div
      class="header">
      <!-- 表头左-->
      <div
        class="header-left publicWidth">
        <span>{{ tableInfo[0][0] }}</span>
      </div>
      <!-- 表头其他字段 -->
      <div
        class="header-rest-father"
        ref="headerRestFather"
        @scroll="headerRestFatherScroll">
        <div
          class="header-rest publicWidth"
          v-for="(item,i) in tableInfo[0].slice(1)"
          :key="item+i">
          <span>{{ item }}</span>
        </div>
      </div>
    </div>
    <div
      class="body">
      <!-- 表体左 -->
      <div
        class="body-left-father"
        ref="bodyLeftFather"
        @scroll="bodyLeftFatherScroll">
        <div
          class="body-left publicWidth">
          <div
            v-for="(bodyListLeft,numLeft) in tableInfo[1]"
            :key="bodyListLeft+numLeft">
            <span>{{ bodyListLeft }}</span>
          </div>
        </div>
      </div>
      <!-- 表体其他字段 -->
      <div
        class="body-rest-father"
        ref="bodyRestFather"
        @scroll="bodyRestFatherScroll">
        <div
          class="body-rest publicWidth"
          v-for="(bodyListRight,numRight) in tableInfo.slice(2)"
          :key="bodyListRight+numRight+1">
          <div
            v-for="(unit,num) in bodyListRight"
            :key="unit+num">
            {{ unit }}
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'ReportForms',
    
    data() {
      return {
        tableInfo: [
          ['日期', '数据1', '数据2', '数据3', '数据4', '数据5'],
          ['3-1', '3-2', '3-3', '3-4', '3-5', '3-6', '3-7', '3-8', '3-9', '3-10', '3-11', '3-12', '3-13', '3-14', '3-15', '3-16', '3-17'],
          ['1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999', '1999'],
          ['2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%', '2.1%'],
          ['90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%', '90%'],
          ['3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9', '3.9'],
          ['7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9', '7.9'],
        ],
      };
    },

    computed: {
      tableInfoAdd() {
        console.log('this.chartList', this.chartList);
        // const { data } = this.chartList;
        const res = [];
        // 获取表头信息
        // const headerInfo = data[0];
        return res;
      },
    },

    methods: {
      // headerRest滚动事件-左右
      headerRestFatherScroll(ev) {
        // 获取滚动距离
        const left = ev.target.scrollLeft;
        // 获取headerRestFather
        const { bodyRestFather } = this.$refs;
        bodyRestFather.scrollLeft = left;
      },
      // bodyRest滚动事件-对应上部左右
      // -对应左部上下
      bodyRestFatherScroll(ev) {
        // 处理左右滚动
        // 获取滚动距离
        const left = ev.target.scrollLeft;
        // 获取headerRestFather
        const { headerRestFather } = this.$refs;
        headerRestFather.scrollLeft = left;

        // 处理上下滚动
        // 获取滚动距离
        const top = ev.target.scrollTop;
        // 获取headerRestFather
        const { bodyLeftFather } = this.$refs;
        bodyLeftFather.scrollTop = top;
      },
      // bodyRest滚动事件
      bodyLeftFatherScroll(ev) {
        // 获取滚动距离
        const top = ev.target.scrollTop;
        // 获取headerRestFather
        const { bodyRestFather } = this.$refs;
        bodyRestFather.scrollTop = top;
      },
    },
  };
</script>

<style lang="less">
  .chart-table {
    margin-top: 0.5rem;
    font-size: 0.36rem;
    
    ::-webkit-scrollbar {
      display: none;
    }

    /* 表格宽度和display公共配置 */
    .publicWidth {
      display: inline-block;
      width: 1rem;
    }

    .header {
      display: flex;
      align-items: center;

      .header-rest-father {
        width: 3rem;
        display: inline-block;
        overflow: scroll;
        white-space: nowrap;
      }
    }

    .body {
      height: 2rem;
      display: flex;
      align-items: center;

      .body-left-father {
        height: 2rem;
        display: inline-block;
        overflow: scroll;
        white-space: nowrap;
      }

      .body-rest-father {
        width: 3rem;
        height: 2rem;
        display: inline-block;
        overflow: scroll;
        white-space: nowrap;
      }
    }
  }
</style>