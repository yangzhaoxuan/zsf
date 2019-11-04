<template>
  <!-- 最外层 -->
  <div class="boss">
    <!-- 顶部搜索框 -->
    <div class="sousuo">
      <img @click="dianji" src="../assets/img/shop/zuojiantou.png" alt />
      <input type="text" placeholder="按关键字搜索" />
    </div>
    <!-- 机酒自由行 -->
    <div class="jijiu">
      <div class="jijiu1">
        <p>机酒自由行</p>
        <ul>
          <li>全部自由行</li>
          <li>自由行</li>
          <li>机票</li>
          <li>邮轮</li>
          <li>酒店</li>
          <li>私人订制</li>
          <li>跟团游</li>
          <li>半自助游</li>
          <li>定制游</li>
        </ul>
      </div>
      <div class="jijiu1">
              <p>出行必备</p>
              <ul>
                      <li>全部必备</li>
                      <li>签证</li>
                      <li>WiFi/电话卡</li>
                      <li>接送机/包车</li>
                      <li>交通票卷</li>
                      <li>自驾租车</li>
                      <li>旅行保险</li>
              </ul>
      </div>
      <div class="jijiu1">
              <p>当地玩乐</p>
              <ul>
                      <li>全部玩乐</li>
                      <li>门票/票券</li>
                      <li>日游小团</li>
                      <li>深度体验</li>
                      <li>当地参团</li>
                      <li>餐饮美食</li>
                      <li>购物</li>
                      <li>设备租赁</li>
              </ul>
      </div>
      <div class="jijiu1">
              <p>深度旅行</p>
              <ul>
                      <li>全部线路</li>
                      <li>citywalk</li>
                      <li>特色线路</li>
              </ul>
      </div>
    </div><!--机酒-->
  </div> <!--最外层-->
</template>


<script>
export default {
  methods: {
    dianji(){
      this.$router.go(-1)
    }
  },
};
</script>


<style scoped>
.boss {
  width: 100%;
  background-color: #fff;
  box-sizing: border-box;
}
/* 顶部搜索框 */
.sousuo {
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background-color: #fff;
  padding: 0.45rem;
  border-bottom: 1px solid #e8e8e8;
}
.sousuo input {
  width: 90%;
  height: 24px;
  border-radius: 0.68rem;
  border: 0;
  background-color: #e8e8e8;
  text-align: center;
  outline: none;
  opacity: 0.9;
}
/* 机酒自由行 */
.jijiu{
        width:100%;
        padding: 0.6rem;
}
.jijiu1{
  width: 100%;
  margin: 0 auto;
  
}
.jijiu1::after{ 
        content: "";
        display: block;
        clear: both;
}
.jijiu1 p {
  color: gray;
  font-size: 0.75rem;
  padding-left: 0.38rem;
  padding-bottom: 0.28rem;
  padding-top: 1.5rem;
}
.jijiu1 ul li {
  float: left;
  width: 30%;
  border:0.03rem solid gray;
  margin: 0.25rem;
  text-align: center;
  padding:0.09rem;
}
</style>





