<template>
    <!-- 商城界面 -->
    <div class="wapper">
        <div class="top">
             <header>
                <input type="text" placeholder="搜索的目的地/关键字" v-model="msg">
                <img src="../assets/img/shop/搜索.png" alt="" @click="selShop">
            </header>
            <!-- 轮播图 -->
            <div class="show">
                <div class="tabbar">
                    <mt-swipe :auto="3000" :speed="300" class="b1">
                        <mt-swipe-item class="item">
                            <img src="../assets/img/shop/01.jpg" alt="">
                        </mt-swipe-item>
                        <mt-swipe-item class="item">
                            <img src="../assets/img/shop/02.jpg" alt="">
                        </mt-swipe-item>
                        <mt-swipe-item class="item">
                            <img src="../assets/img/shop/03.jpg" alt="">
                        </mt-swipe-item>
                    </mt-swipe>
                </div>
            </div>
        </div>
        <!-- 轮播图下方区域 -->
        <div class="container">
            <!-- 导航 -->
            <div class="con-dao">
                <div class="dao-box-btn">
                    <router-link :to="{path:'/Trunk',query:{msg:'自由行',key:1}}">
                        <img src="../assets/img/shop/行李箱.png" alt="">
                        <p>自由行</p>
                    </router-link>
                </div>
                <div class="dao-box-btn">
                    <router-link :to="{path:'/Trunk',query:{msg:'优惠机票',key:2}}">
                        <img src="../assets/img/shop/飞机.png" alt="">
                        <p>优惠机票</p>
                    </router-link>
                </div>
                <div class="dao-box-btn">
                    <router-link :to="{path:'/Trunk',query:{msg:'当地玩乐',key:3}}">
                        <img src="../assets/img/shop/娱乐.png" alt="">
                        <p>当地玩乐</p>
                    </router-link>
                </div>
                <div class="dao-box-btn">
                    <router-link :to="{path:'/Trunk',query:{msg:'签证',key:4}}">
                        <img src="../assets/img/shop/签证.png" alt="">
                        <p>签证</p>
                    </router-link>
                </div>
                <div class="dao-box-btn">
                    <router-link :to="{path:'/Trunk',query:{msg:'租车自驾',key:5}}">
                        <img src="../assets/img/shop/轿车.png" alt="">
                        <p>租车自驾</p>
                    </router-link>
                </div>
                <div class="dao-box-btn">
                    <router-link :to="{path:'/Trunk',query:{msg:'酒店',key:6}}">
                        <img src="../assets/img/shop/酒店.png" alt="">
                        <p>酒店</p>
                    </router-link>
                </div>
                <div class="dao-box-btn">
                    <router-link :to="{path:'/Trunk',query:{msg:'游轮',key:7}}">
                        <img src="../assets/img/shop/游轮.png" alt="">
                        <p>游轮</p>
                    </router-link>
                </div>
                <div class="dao-box-btn">
                    <router-link :to="{path:'/shop_btn_all',query:{msg:'全部',key:8}}">
                        <img src="../assets/img/shop/全部.png" alt="">
                        <p>全部</p>
                    </router-link>
                </div>
            </div>
            <!-- 限时优惠 -->
            <div class="con-discount">
                <div class="tit">
                    限时折扣
                </div>
                <!-- 外层父元素 -->
                <div class="cont-box">
                    <div class="cont-item" v-for="(item,i) of task" :key="i">
                        <router-link :to="{path:'/ShopDetails',query:{id:item.Tid}}">
                            <img :src="'http://127.0.0.1:5050/'+item.Timg" alt="">
                            <div class="cont-text">
                                <div class="cont-title">{{item.TsuBtitle}}</div>
                                <div class="cont-price">
                                    <span>{{item.T_re_price}}</span>元起
                                </div>
                            </div>
                        </router-link>
                    </div>
                </div>
            </div>
        </div>
        <!-- 通用底部 -->
        <div class="bottom"></div>
    </div>
</template>
<script>
import { MessageBox } from 'mint-ui';
export default {
    data() {
        return {
            task:[],//数组接收返回的数据
            pag:1,//页数
            sum:4,//记录数
            msg:""
        }
    },//在页面加载之前发送axios请求
    created() {
        this.axios.get("shop/shoplist",{
            params:{//要传递的参数
                pag:this.pag,
                sum:this.sum
            }
        }).then(result=>{           //赋值数组
        // console.log(result.data.data);
            this.task=result.data.data;
        })
    },
    methods: {
        //input搜索框
        selShop(){
            //去掉开头和结尾的空格
            this.msg=this.msg.replace(/^\s+|\s+$/g,"");
            if(this.msg==""){
                this.$messagebox('提示','请输入关键字');
            }else{
                //发送axios到服务器进行数据库的模糊查询查出相关结果
            }
        }
    },
}
</script>
<style scoped>
*{
    box-sizing: border-box;
    font-size: 16px;
}
a{
    text-decoration: none;
    color: #554f4f;
}
.wapper{
    width: 100%;
}
.top{
    width: 100%;
    height: 170px;
}
.top header{
    width: 100%;
    padding: 20px;
    position: relative;
    z-index:1;
}
.top header input{
    width:65%;
    height: 30px;
    position: absolute;
    top: 30%;
    right:17%;
    color: #fff;
    margin: 0 auto;
    text-align: center;
    border-radius: 30px;
    outline: 0;
    font-size: 1rem;
    background-color:white;
    /* opacity: 0.3; */
    border: none;
    color: #000;
}
.top header img{
    width: 30px;
    position: absolute;
    top:70%;
    right:5%;
    margin-top: -15px;
}
.container{
    width: 100%;
    background-color: #cccccc;
}
.show{
    margin-top:-75px;
    z-index:0;
}

.tabbar{
    width:100%;
    height:11.25rem;
    box-sizing: border-box;
}

.item img{
    width:100%;
    height:11.25rem;
}
.mint-swipe-items-wrap>.mint-swipe-item{
    overflow: hidden;
}


.con-dao{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
    background-color: #fff;
    padding: 10px 20px 20px 20px;
}
.con-dao .dao-box-btn{
    width: 23%;
    margin: 10px 0 10px 0;
    text-align: center;
}
.con-dao .dao-box-btn a{
    font-size: 1rem;
}
.con-dao .dao-box-btn img{
    width: 70%;
}
.con-discount{
    width: 100%;
    margin-top: 20px;
    background-color: #fff;
}
.con-discount .tit{
    width: 100%;
    padding: 10px 0 10px 0;
    text-align: center;
    font-size: 1.3rem;
    font-weight: bold;
}
.con-discount .cont-box{
    width: 100%;
    padding: 0 20px 0 20px;
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
.con-discount .cont-box .cont-item{
    width: 48%;
    padding: 5px;
}
.cont-box .cont-item img{
    width: 100%;
    height: 110px;
}
.cont-box  .cont-text{
    text-align: left;
    font-size: 1rem;
}
.cont-box  .cont-text .cont-title{
    width: 165px;
    height: 44px;
    overflow: hidden;/*自动隐藏文字*/
    text-overflow: ellipsis;/*文字隐藏后添加省略号*/
    display: -webkit-box;
    -webkit-line-clamp:2; /*想要显示的行数*/
    -webkit-box-orient: vertical;
}
.cont-box .cont-price span{
    color: #ff7467;
}
.bottom{
    position: fixed;
    left: 0;
    bottom: 0;
}
</style>
