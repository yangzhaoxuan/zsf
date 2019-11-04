<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  color: #2c3e50;
}
/* 修改商城导航二级页面导航条字体大小 */
.mint-tab-item-label{
    font-size: 16px;
}
/* 商城-导航栏按钮-详情页-按钮图片 */
.mint-tab-item-label img{
  width: 15px;
}
</style>
