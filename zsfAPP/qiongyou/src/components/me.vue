<template>
  <div id="box">
    <div id="mu"></div>
    <div id="box_left">
      <ul>
        <li style="text-align:center">
          <span class="title">设置</span>
          <span class="item_right" @click="you">
            <img
              src="http://127.0.0.1:5050/me/youjiantou.png"
              alt
              style="width:1.5rem;height:1.5rem;margin-top:0.4rem;"
            />
          </span>
        </li>
        <li>
          <span class="title">个人设置</span>
        </li>
        <li>
          <router-link to="me_sz_01">账号绑定与设置</router-link>
          <span class="item_right">{{uname}}&nbsp;&nbsp;&nbsp;&gt;</span>
        </li>
        <li>
          <router-link to>编辑个人资料</router-link>
          <span class="item_right">&gt;</span>
        </li>
        <li>
          <router-link to>推送设置</router-link>
          <span class="item_right">&gt;</span>
        </li>
        <li>
          <router-link to>隐私设置</router-link>
          <span class="item_right">&gt;</span>
        </li>
        <li>
          <router-link to>视频自动播放</router-link>
          <span class="item_right">&gt;</span>
        </li>
        <li>
          <router-link to>常用信息</router-link>
          <span class="item_right">常用出行人&nbsp;&nbsp;&gt;</span>
        </li>
        <li>
          <h2 class="title">应用相关</h2>
        </li>
        <li>
          <router-link to>常见问题及反馈意见</router-link>
        </li>
        <li>
          <router-link to>评价走四方</router-link>
        </li>
        <li>
          <router-link to>分享走四方</router-link>
        </li>
        <li>
          <router-link to>会员中心</router-link>
        </li>
        <li @click="cleanNeicun">
          <router-link to>消除缓存</router-link>
          <span class="item_right">{{neicun}}&nbsp;M</span>
        </li>
        <li id="sz_foot">
          <p>穷游Iphone版</p>
          <p>版本9.9.1</p>
          <p>Copyright&#169;2004-2019 QYER inc.</p>
        </li>
      </ul>
    </div>
    <div id="box_right">
      <div id="header">
        <img src="http://127.0.0.1:5050/me/shezhi.png" alt class="slt" @click="shezhi" />
        <img src="http://127.0.0.1:5050/me/saoma.png" alt class="slt" />
        <button id="zj">足迹遍布{{count}}个国家</button>
        <img class="head_right" src="http://127.0.0.1:5050/me/xiaoxi.png" alt />
      </div>

      <div id="sbody">
        <img :src="mtx" id="touxiang"  @click="bj"/>
        <br />
        <button id="bianji" @click="bj">
            编辑资料
        </button>
        <h3 id="una">{{uname}}</h3>
        <ul id="li_item">
          <li>
            <h3>{{count}}</h3>
            <p class="p_item">获赞与收藏</p>
          </li>
          <li>
            <h3>{{count}}</h3>
            <p class="p_item">粉丝</p>
          </li>
          <li>
            <h3>{{count}}</h3>
            <p class="p_item">关注</p>
          </li>
          <li>
            <h3>{{count}}</h3>
            <p class="p_item">国家</p>
          </li>
        </ul>
        <div id="jindu">
          <div class="span">￥{{price}}现金奖励</div>
          <div class="span">当前进度{{num2}}/{{num1}}></div>
          <div id="jindu_mag">
            <div id="jindu_pad"></div>
          </div>
        </div>
        <ul id="li_item2">
          <li>
            <img src="http://127.0.0.1:5050/me/shoucang.png" alt class="item2_img" />
            <span>收藏夹</span>
          </li>
          <li>
            <img src="http://127.0.0.1:5050/me/youhuiquan.png" alt class="item2_img" />
            <span>优惠券</span>
          </li>
          <li>
            <img src="http://127.0.0.1:5050/me/qianbao.png" alt class="item2_img" />
            <span>钱包</span>
          </li>
          <li>
            <img src="http://127.0.0.1:5050/me/yueban.png" alt class="item2_img" />
            <span>Bir伴</span>
          </li>
          <li>
            <img src="http://127.0.0.1:5050/me/dingdan.png" alt @click="dingdan" class="item2_img" />
            <span>订单</span>
          </li>
          <li>
            <img src="http://127.0.0.1:5050/me/wenda.png" alt class="item2_img" />
            <span>问答</span>
          </li>
        </ul>
      </div>
      <div id="foot">
        <img src="http://127.0.0.1:5050/me/kong.png" alt />
        <p>你还没有发布过Biu,快来Biu出你的旅行！</p>
      </div>
    </div>
  </div>
</template>
<script>

export default {
    data(){
        return{
            count:13,
            uid:"",
            uname:"请登录",
            mtx:"http://127.0.0.1:5050/me/ktouxiang.png",
            price:9.9,
            num1:2,
            num2:1,
            neicun:43.9,
            uphone:""
        }
    },
    methods: {
        shezhi(){
             var box_left=document.getElementById("box_left");
             var mu=document.getElementById("mu");
             box_left.style.left=0;
             box.style.height=47+"rem";
             mu.style.display="block";
        },
        you(){
            var box_left=document.getElementById("box_left");
            box_left.style.left=-80+"%";
            box.style.height=60+"rem";
            mu.style.display="none";
        },
        dingdan(){
            this.$router.push("order");
        },
        cleanNeicun(){  
            // var self=this;
            var t=setInterval(()=>{
                this.neicun=(this.neicun-0.1).toFixed(1);
                if(this.neicun<0){
                    this.neicun=0;
                    clearInterval(t);
                }
            },4) 
        },
        load(){
            // var uid=sessionStorage.getItem("uid");
            // console.log(uid);
            var uid=sessionStorage.getItem("uid");
            this.uid=uid;
            this.axios.get("user/me",{params:{uid}}).then(res=>{
                if(uid!=undefined){
                    res.data[0].uheadportrait==null?this.mtx=this.mtx:this.mtx=res.data[0].uheadportrait;
                    if(res.data[0].uname==null){
                        this.uname=res.data[0].uphone;
                    }else{
                        this.uname=res.data[0].uname;
                    } 
                }
            })
        },
        bj(){
            var txurl=this.mtx;
            this.$router.push({path:"me_sz_02",query:{txurl}});
        }
    },
    created() {
        this.load();
    },
}

</script>

<style lang="" scoped>
a {
  text-decoration: none;
  color: grey;
}
li {
  list-style-type: none;
}
.title {
  font-weight: 500;
  font-size: 1.6rem;
  margin-top: 0.6rem;
  margin-bottom: 0.6rem;
  /* margin:1rem 0 1rem 0.5rem; */
}

#box {
  width: 100%;
  height: 60rem;
  position: relative;
}
#box > #mu {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 60rem;
  background-color: black;
  opacity: 0.3;
  z-index: 20;
  display: none;
}
#box > #box_left {
  position: fixed;
  width: 80%;
  height: 60rem;
  top: 0;
  left: -80%;
  background-color: white;
  transition: 0.6s;
  z-index: 200;
}
#box > #box_right {
  position: absolute;
  width: 100%;
  top: 0;
  left: 0;
  z-index: 0;
}
#box_left > ul > li {
  padding-left: 0.5rem;
  padding-right: 0.6rem;
  height: 2.7rem;
  line-height: 2.7rem;
  border-bottom: 0.03rem solid lightgray;
}
#box > #box_left > ul > li > a {
  font-size: 1rem;
}
.item_right {
  float: right;
  vertical-align: middle;
  /* line-height:2.7rem; */
}
#header {
  height: 10rem;
  width: 100%;
  overflow: hidden;
  background-image: url("http://127.0.0.1:5050/me/meBig2.jpg");
}
.slt {
  float: left;
  padding: 0.6rem;
  width: 1.3rem;
  height: 1.3rem;
}
#zj {
  float: left;
  margin-left: 4rem;
  margin-top: 0.6rem;
  height: 1.6rem;
  width: 9.5rem;
  border-radius: 2rem;
  background: none;
  font-size: 0.7rem;
  border: 0.1rem solid white;
  color: white;
}
.head_right {
  float: right;
  width: 2.1rem;
  height: 2.1rem;
  padding: 0.4rem;
}
#sbody {
  text-align: center;
}
#touxiang {
  width: 5.4rem;
  height: 5.4rem;
  border-radius: 50%;
  border: 0.2rem solid white;
  margin-top: -2.7rem;
  background: white;
}
#bianji {
  float: right;
  width: 6.3rem;
  height: 1.6rem;
  border-radius: 3rem;
  border: 0.08rem solid grey;
  color: grey;
  background: none;
  margin-top: -2.7rem;
  margin-right: 0.5rem;
  position: relative;
}
#sctx{
    position: absolute;
    top:0;
    left:0;
    opacity:0;
    width: 6.3rem;
    height: 1.6rem;
}
#una {
  margin-top: 0.4rem;
}
#li_item {
  margin-top: 1.2rem;
  display: flex;
  justify-content: space-around;
}
#li_item > li {
  /* width:25%; */
  text-align: center;
}
#p_item {
  font-size: 0.6rem;
}
#jindu {
  margin: 0 auto;
  margin-top: 0.9rem;
  width: 93%;
  height: 5.5rem;
  background-image: linear-gradient(to left, #d71345 0%, #ef5b9c 100%);
  border-radius: 0.5rem;
}
#jindu > .span {
  float: left;
  width: 50%;
  font-size: 1.3rem;
  text-align: center;
  margin-top: 0.8rem;
  color: white;
}

#jindu_mag {
  float: left;
  margin-left: 3%;
  margin-top: 1rem;
  width: 94%;
  height: 0.7rem;
  background-color: rgba(240, 128, 128, 0.8);
  border-radius: 2rem;
}
#jindu_pad {
  width: 50%;
  height: 0.7rem;
  border-radius: 2rem;
  background-color: white;
}
#li_item2 {
  width: 100%;
  margin-top: 1rem;
  height: 7rem;
  border-bottom: 0.3rem solid #eee;
}
#li_item2 > li {
  float: left;
  width: 33%;
  font-size: 0.9rem;
  color: grey;
  height: 2.2rem;
  line-height: 2.2rem;
  text-align: center;
}
#li_item2 > li > span {
  margin-left: 0.4rem;
  margin-top: -0.6rem;
}
.item2_img {
  margin-bottom: -0.6rem;
  width: 1.9rem;
  height: 1.9rem;
}
#foot {
  text-align: center;
  margin-top: 8rem;
  font-size: 1rem;
  color: grey;
}
#foot > img {
  width: 5rem;
  height: 5rem;
}
#box_left > ul > #sz_foot {
  text-align: center;
  height: 6rem;
  border-bottom: none;
}
#box_left > ul > #sz_foot > p {
  height: 33.3%;
  font-size: 0.3rem;
  color: lightgrey;

  /* margin-top:0.1rem; */
}
</style>