<template>
    <div class="index">
        <div class="nav">
            <div class="logo">
               <router-link to="./">
                    <img src="../assets/img/logo.png" alt="">
               </router-link>
            </div>
            <div class="search">
                <div>
                <img src="../assets/img/index/search.png" alt="">
                </div>
                <input type="text">
            </div>
            <div class="user">
                <span>
                    <img v-on:click="uslogin" :src="mtx" alt="">
                </span>
            </div>
        </div>
        <main>
            <div class="main">
                <ul>
                    <li>
                        <router-link to="/">
                            <img src="../assets/img/index/jinnang.png" alt="">
                            <span>锦囊</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/">
                            <img src="../assets/img/index/xingchengzhushou.png" alt="">
                            <span>行程助手</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/">
                            <img src="../assets/img/index/youji.png" alt="">
                            <span>游记</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/">
                            <img src="../assets/img/index/biu.png" alt="">
                            <span>Biu</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/">
                            <img src="../assets/img/index/wenda.png" alt="">
                            <span>问答</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/mudidi">
                            <img src="../assets/img/index/mudidi.png" alt="">
                            <span>目的地</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/">
                            <img src="../assets/img/index/jiudian.png" alt="">
                            <span>酒店</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/">
                            <img src="../assets/img/index/shangcheng.png" alt="">
                            <span>商城</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/biuban">
                            <img src="../assets/img/index/yueban.png" alt="">
                            <span>约伴</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="/">
                            <img src="../assets/img/index/zhuahlan.png" alt="">
                            <span>专栏</span>
                        </router-link>
                    </li>
                </ul>
            </div>
            <div class="zhuda">
                <span>主打折扣</span>
                <div>
                    <ul>
                        <li v-for="(item,i) of jipiaolist" :key="i">
                            <router-link to="/">
                                <img :src="url+item.img_url" alt="">
                                <p>{{item.detail}}</p>
                                <p><em>{{item.price}}</em>元起</p>
                            </router-link>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="yule">
                <span>精选娱乐</span>
                <div>
                    <ul>
                        <li>
                            <router-link to="/">
                                特价机票
                            </router-link>
                                <img src="../assets/img/index/tejiajipiao.png" alt="">
                        </li>
                        <li>
                            <router-link to="/">
                                机酒自由行
                            </router-link>
                                <img src="../assets/img/index/ziyou.png" alt="">
                        </li>
                        <li>
                            <router-link to="/">
                                当地玩乐
                            </router-link>
                                <img src="../assets/img/index/dangdiwanle.png" alt="">
                        </li>
                        <li>
                            <router-link to="/">
                                门票/门卷
                            </router-link>
                                <img src="../assets/img/index/menpiao.png" alt="">
                        </li>
                        <li>
                            <router-link to="/">
                                日本高铁
                            </router-link>
                                <img src="../assets/img/index/ribengaotie.png" alt="">
                        </li>
                        <li>
                            <router-link to="/">
                                wifi电话卡
                            </router-link>
                                <img src="../assets/img/index/wifi.png" alt="">
                        </li>
                        <li>
                            <router-link to="/">
                                欧铁频道
                            </router-link>
                                <img src="../assets/img/index/outie.png" alt="">
                        </li>
                        <li>
                            <router-link to="/">
                                保险频道
                            </router-link>
                                <img src="../assets/img/index/baoxian.png" alt="">
                        </li>
                        <li>
                            <router-link to="/">
                                接送机/包车
                            </router-link>
                                <img src="../assets/img/index/baoche.png" alt="">
                        </li>
                    </ul>
                </div>
            </div>
            <div class="gonglue">
                <div class="jingxuan">
                    <span>精选攻略</span>
                    <router-link to="/">
                        <span>出境游安全提升</span>
                    </router-link>
                </div>
                <div class="gonglue-main">
                    <ul>
                        
                        <li>
                            <router-link to="/details">
                                <img class="demo" src="../assets/img/index/munihei.jpg" alt="">
                                <p>慕尼黑啤酒节开幕大赏！两只眼里只有重金属，酒精和黑暗反应的化学博士去德国会干什么</p>
                                <div>
                                    <div class="touxiang">
                                        <img src="../assets/img/index/touxiang.jpg" alt="">
                                    <span>活猪子</span>
                                    </div>
                                    <div class="zan">
                                        <img src="../assets/img/index/zan.png" alt="">
                                        <span>2007</span>
                                    </div>
                                </div>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="/">
                                <img src="../assets/img/index/munihei.jpg" alt="">
                                <p>慕尼黑啤酒节开幕大赏！两只眼里只有重金属，酒精和黑暗反应的化学博士去德国会干什么</p>
                                <div>
                                    <div class="touxiang">
                                        <img src="../assets/img/index/touxiang.jpg" alt="">
                                    <span>活猪子</span>
                                    </div>
                                    <div class="zan">
                                        <img src="../assets/img/index/zan.png" alt="">
                                        <span>2007</span>
                                    </div>
                                </div>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="/">
                                <img src="../assets/img/index/munihei.jpg" alt="">
                                <p>慕尼黑啤酒节开幕大赏！两只眼里只有重金属，酒精和黑暗反应的化学博士去德国会干什么</p>
                                <div>
                                    <div class="touxiang">
                                        <img src="../assets/img/index/touxiang.jpg" alt="">
                                    <span>活猪子</span>
                                    </div>
                                    <div class="zan">
                                        <img src="../assets/img/index/zan.png" alt="">
                                        <span>2007</span>
                                    </div>
                                </div>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="/">
                                <img src="../assets/img/index/munihei.jpg" alt="">
                                <p>慕尼黑啤酒节开幕大赏！两只眼里只有重金属，酒精和黑暗反应的化学博士去德国会干什么</p>
                                <div>
                                    <div class="touxiang">
                                        <img src="../assets/img/index/touxiang.jpg" alt="">
                                    <span>活猪子</span>
                                    </div>
                                    <div class="zan">
                                        <img src="../assets/img/index/zan.png" alt="">
                                        <span>2007</span>
                                    </div>
                                </div>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="/details">
                                <img src="../assets/img/index/munihei.jpg" alt="">
                                <p>慕尼黑啤酒节开幕大赏！两只眼里只有重金属，酒精和黑暗反应的化学博士去德国会干什么</p>
                                <div>
                                    <div class="touxiang">
                                        <img src="../assets/img/index/touxiang.jpg" alt="">
                                    <span>活猪子</span>
                                    </div>
                                    <div class="zan">
                                        <img src="../assets/img/index/zan.png" alt="">
                                        <span>2007</span>
                                    </div>
                                </div>
                            </router-link>
                        </li>
                    </ul>
                </div>
            </div>
        </main>
    </div>
</template>
<script>
export default {
    data() {
        return {
            uid:"",
            value:'',
            jipiaolist:[],
            url:'http://127.0.0.1:5050/',
            mtx:"http://127.0.0.1:5050/me/ktouxiang.png",
        }
    },
    methods: {
        uslogin(){
            if(this.uid==undefined){
                this.$toast("请登录"); 
                this.$router.push("login");
            }else{
                this.$emit("child-id",this.uid);
            }
        }
    },
    created() {
        var uid=sessionStorage.getItem("uid");
        this.uid=uid;
        if(uid!=undefined){
            this.axios.get("user/me",{params:{uid}}).then(res=>{
                 res.data[0].uheadportrait==null?this.mtx=this.mtx:this.mtx=res.data[0].uheadportrait;
            })
        }
        this.axios.get('index/indexlist')
        .then(res => {
            this.jipiaolist=res.data.result;
            // console.log(this.jipiaolist);
        })
        .catch(err => {
            console.error(err); 
        })
    },
}
</script>
<style scoped>
.index>.nav{
    display: flex;
    flex-flow: wrap;
    justify-content: space-between;
    align-items: center;
    padding:10px;

}
.logo{
    width: 16%;
}
.logo img{
    width: 100%;
    border-radius: 5px;
}
.user{
    width: 10%;
}
.user img{
    width: 100%;
    
    border-radius: 50%;
}
.search>input{
    border-width: 0;
    border:none;
    height: 25px;
    outline:0;
    width: 80%;
    background: #f0f0f0;
}
.search>div{
    width: 10%;
}
.search>div>img{
    line-height: 20px;
}
.search{
    border-radius: 25px;
    overflow: hidden;
    line-height: 25px;
    display: flex;
    justify-content: center;
    width: 63%;
    background: #f0f0f0;
}
main{
    padding: 0.75rem;
    box-sizing: border-box;
}
.main>ul>li>a>img{
    width: 100%;
}
.main>ul>li{
    width: 20%;
    padding:0.6rem 0.3rem;
    box-sizing: border-box;
    text-align: center;
}
.main>ul{
    display: flex;
    flex-flow: wrap;
    align-items: center;
    justify-content: space-around;
}
a{
    text-decoration: none;
    color: #000;
    font-size: 0.75rem;
}
.zhuda>span,.yule>span{
    display: block;
    font-size: 1.25rem;
    padding:0 0 15px 15px;
    font-weight: 700;
}
.zhuda>div>ul{
    display: flex;
    flex-flow: wrap;
}
.zhuda>div>ul>li{
    width: 50%;
    margin-bottom: 0.5rem;
}
.zhuda>div>ul>li>a{
    border: 1px solid #ccc;
    border-radius: 0.75rem;
    overflow: hidden;
    display: block;
    box-sizing: border-box;
    margin: 0 10px;
}
.zhuda>div>ul>li>a>img{
    width: 100%;
}
.zhuda>div>ul>li>a>p,.gonglue-main>ul>li>a>p{
    font-size: 1rem;
    font-weight: 600;
    margin:0 0.5rem;
    padding: 0.25rem 0;
    white-space: nowrap;
    text-overflow: ellipsis;
    overflow: hidden;
}
.zhuda>div>ul>li>a>p>em{
    color: #cc0000;
}
.zhuda>div>ul>li>a>p:last-child{
    font-size: 0.8rem;
    margin: 0.35rem 0;
    padding:0 0.6rem;
}
.qiongyou{
    position: fixed;
    width: 35%;
    right: 0;
    bottom: 1.5rem;
}
.qiongyou>img{
    width: 100%;
}
.yule>div>ul>li{
    width: 30%;
    border: 1px solid #ccc;
    border-radius: 0.5rem;
    position: relative;
    padding:0.5rem;
    box-sizing: border-box;
    margin-bottom: 1rem;
}
.yule>div>ul>li>img{
    bottom: 0;
    right: 0.2rem;
    width: 27.5%;
    position: absolute;
}
.yule>div>ul>li>a{
    display: block;
    font-size: 0.8rem;
    padding-bottom: 0.4rem;
}
.yule>div>ul{
    display: flex;
    flex-flow: wrap;
    justify-content: space-around;
}
.jingxuan{
    display: flex;
    justify-content: space-between;
    margin-bottom: 0.5rem;
}
.jingxuan>a:last-child{
    background: #02db94;
    color: #fff;
    border-radius: 1.25rem;  
    display: flex;
    justify-content: center;
    align-items: center;  
    width: 35%;
    text-align: center;
}
.gonglue>div>span{
    font-size: 1.25rem;
    font-weight: 700;
}
.gonglue-main>ul{
    display: flex;
    justify-content: space-between;
    flex-flow: row wrap;
}
.gonglue-main>ul>li{
    width: 48%;
    border-radius: 0.5rem;
    overflow: hidden;
}

.gonglue-main>ul>li>a>img{
    width: 100%;
}
.gonglue-main>ul>li>a>div{
    display: flex;
    align-items: center;
    justify-content: space-between;
}
.touxiang>img{
    width: 10%;
}
.zan{
    display: flex;
}
</style>