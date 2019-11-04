<template>
<div id="nav">
  <div id="header">
      <img src="http://127.0.0.1:5050/order/zjt.png" alt="" @click="fh" id="fanhui" class="nav_img">
      <div class="icon_nav" @click="qh">
        <span class="icon-left is-color">商城订单</span>
        <span class="icon-right">第三方酒店订单</span>
      </div>   
  </div>
  <div id="boxW">
    <div id="box_body">
      <div id="box_left">
        <div id="shop">
          <mt-navbar v-model="selected">
            <mt-tab-item id="tab1">
              <img src="http://127.0.0.1:5050/order/nav_qb.png" class="nav_img" />
              <h5>全部</h5>
            </mt-tab-item>
            <mt-tab-item id="tab2">
              <img src="http://127.0.0.1:5050/order/nav_dzf.png" alt class="nav_img" />
              <h5>待支付</h5>
            </mt-tab-item>
            <mt-tab-item id="tab3">
              <img src="http://127.0.0.1:5050/order/nav_dcx.png" alt class="nav_img" />
              <h5>待出行</h5>
            </mt-tab-item>
            <mt-tab-item id="tab4">
              <img src="http://127.0.0.1:5050/order/nav_pj.png" alt class="nav_img" />
              <h5>待评价</h5>
            </mt-tab-item>
            <mt-tab-item id="tab5">
              <img src="http://127.0.0.1:5050/order/nav_sh.png" alt class="nav_img" />
              <h5>退款/售后</h5>
            </mt-tab-item>
          </mt-navbar>
          <mt-tab-container v-model="selected">
            <mt-tab-container-item id="tab1">
              <div class="od_item">
                  <div class="item_header">
                      <span>订单号:2154127045</span>
                      <span>2019-10-15&nbsp;19:54:38</span>
                  </div>
                  <div class="item_body">
                      <img :src="'http://127.0.0.1:5050/'+obj.Timg" alt="" class="item_left img_row">
                      <div class="item_right img_row">{{obj.TsuBtitle}}</div>
                      <div class="item_left">产品类型</div>
                      <div class="item_right">懒人纯玩版 丹嫩[含手划船]+美功 成人</div>
                      <div class="item_left">出行日期</div>
                      <div class="item_right">2019-10-16</div>
                      <div class="item_left">购买数量</div>
                      <div class="item_right">数量x1</div>
                      <div class="item_left">实付金额</div>
                      <div class="item_right">￥199.00</div> 
                  </div>
                  <div class="item_foot">
                     <span>订单支付超时</span> 
                      <button>再次预定</button>
                  </div>
              </div>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab2">
              <div class="box_right_body">
                <img src="http://127.0.0.1:5050/me/kong.png" alt="">
                <p>没有待支付订单</p>
              </div>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab3">
             <div class="box_right_body">
                <img src="http://127.0.0.1:5050/me/kong.png" alt="">
                <p>没有待出行订单</p>
              </div>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab4">
              <div class="box_right_body">
                <img src="http://127.0.0.1:5050/me/kong.png" alt="">
                <p>没有待评价订单</p>
              </div>
            </mt-tab-container-item>
            <mt-tab-container-item id="tab5">
              <div class="box_right_body">
                <img src="http://127.0.0.1:5050/me/kong.png" alt="">
                <p>没有退款订单</p>
              </div>
            </mt-tab-container-item>
          </mt-tab-container>
        </div>
      </div>
      <div id="box_right">
        <div class="box_right_nav">
          <div class="box_right_li">
            <img src="http://127.0.0.1:5050/order/beike-01.png" class="brImg" alt="">
            <div class="brcenter">
              <h4>贝壳beike大酒店官方客服</h4>
              <span>欢迎穷游用户通过私信与我们沟通酒店预订相关问题</span>
            </div>
            <button class="brbtn">私信客服</button>
          </div>
          <div class="brlp">
              <p>房价最惠-立即确认-免费取消-中文客服</p>
          </div>
       </div>
       <div class="box_right_body">
         <img src="http://127.0.0.1:5050/me/kong.png" alt="">
         <p>当前什么都没有</p>
       </div>
      </div>
    </div>
  </div>
</div>
</template>
<script>
export default {
  data() {
    return {
      selected: 'tab1',
      obj:{
        Timg:"shop/bz_01_1.jpg"
      }
    }
  },
  methods: {
      fh(){
          this.$router.go(-1);
      },
      qh(e){
        var self=e.target;
        var box=document.getElementById("box_body");
        if(self.nodeName=="SPAN"){ 
          self.style.color="#00ffcc";
          if(self.className.indexOf("left")!=-1){
            self.nextElementSibling.style.color="grey";
            box.style.marginLeft=0+"%";
          }else{
            self.previousElementSibling.style.color="grey";
            box.style.marginLeft=-100+"%";
          }
        } 
      },
      load(){
        var lid=this.$route.query.lid;
        console.log(lid);
        this.axios.get("trunk/queryOne",{params:{lid:lid}}).then(res=>{
          console.log(res.data.data[0]);
            this.obj=res.data.data[0];
        })
      }
  },
  created() {
    this.load();
  },
};
</script>
<style lang="" scoped>
a{
    text-decoration: none;
}
#header{
    height:3.3rem;
    line-height:3.3rem;
    text-align: center;
    font-size:1rem;
}
#fanhui{
    float: left;
    margin:0.4rem;
}
#header>span+span{
    margin-left:1.6rem;
}
#shop {
  width: 100%;
  
}
#fanhui{
  padding-top:0.6rem;
}
#boxW{
  width:100%;
  overflow: hidden;
}
#box_body{
  width:200%;
  transition:1s;
}
#box_left,#box_right{
  width: 50%;
  float: left;
}
#shop > .mint-navbar {
  width: 100%;
  height:3.7rem;
  border-bottom:0.04rem solid lightgray;
}

div > #shop > .mint-navbar > .mint-tab-item.is-selected {
  border: none;
}
div > #shop > .mint-navbar > .mint-tab-item.is-selected h5 {
  border-bottom: 0.25rem solid #00ffcc;
  color: black;
}
#shop>.mint-tab-container>.mt-tab-container-item{
    margin-top:0.6rem;

}
.mint-navbar .mint-tab-item {
  padding: 0;
}
#shop > .mint-navbar > .mint-tab-item > .mint-tab-item-label {
  width: 100%;
}
#shop > .mint-navbar > .mint-tab-item > .mint-tab-item-label > h5 {
  width: 3.6rem;
  margin: 0 auto;
  margin-top: 0.4rem;
}
.nav_img {
  width: 1.1rem;
  height: 1.1rem;
}

.item_left{
    width:14%;
    height:1.4rem;
    margin-left:1rem;
    color:grey;
}
.item_right{
    white-space: pre-wrap;
    width:80%;
    height:1.4rem;
}
.img_row{
    height:3.3rem;
    font-size:1.2rem;
    overflow:hidden; 

text-overflow:ellipsis;

display:-webkit-box; 

-webkit-box-orient:vertical;

-webkit-line-clamp:2; 
}
.item_header,.item_body,.item_foot{
    display:flex;
    justify-content:space-between;
    flex-wrap:wrap;
    padding:0 1rem;
    font-size:0.8rem;
}
.item_header{
  font-size:0.6rem;
  color: grey;
}

.item_body{
    width: 100%;
    padding: 0;
    margin:0 auto;
}
.item_body span{
    margin-left: 1rem;
}
.od_item{
    width: 98%;
    margin:0.15rem;
    background:white; 
    border: 0.02rem solid #eee;
}
.item_header{
    height: 1.8rem;
    line-height:1.8rem;
}
.item_foot{
    display: flex;
    justify-content: space-between;
    height: 2.5rem;
    line-height:2.5rem;
}
.item_foot>button{
    background:#00ffcc;
    padding:0 0.8rem;
    height:2rem;
    border-radius:0.4rem;
    font-size:1rem;
    border:none;
    outline: none;
    color:white;
}
.is-color{
 color:#00ffcc;
}
.icon_nav{
  width:60%;
  margin: 0 auto;
  display: flex;
  justify-content: space-around;
}
.box_right_nav{
  width:96%;
  margin: 0 auto;
   border-radius:0.5rem;
   border:0.04rem solid #eee;
}
.box_right_li{
  width:100%;
  display: flex;
  justify-content: space-around;
  padding:1.4rem 0.8rem;
  flex-wrap: wrap;
  border-radius:0.5rem;
}
.brImg{
  width:3.2rem;
  height:3.2rem;
}
.brcenter{
  width:48%;
}
.brcenter>span{
  color: lightgrey;
  font-size:0.8rem;
  margin-top: 0.2rem;
}
.brbtn{
  width:5rem;
  height:1.5rem;
  background:#00DD77;
  border-radius: 0.9rem;
  color: white;
  border: none;
  outline: none;
  margin-top:0.6rem;
  margin-right: 0.8rem;
}
.brlp{
  width:100%;
  margin-top:0.4rem;
  padding: 0.5rem 0;
  text-align: center;
  background-color:#E0FFFF;
  font-size:0.8rem;
  color: black;
  opacity:0.6;
}
.box_right_body{
  text-align: center;
  color: grey;
  margin:30% 0;
}
</style>