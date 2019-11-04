<template>
    <!-- 自由行界面 -->
    <div class="wapper">
        <!-- 头部 -->
        <div class="head">
            <div class="head-top">
                <img src="../assets/img/shop/left.png" alt="" @click="go_back">
                <!-- 获取焦点时宽度为80%，失去焦点时为100% -->
                <input type="text" placeholder="请输入关键字"  :style="{width:search?'80%':'100%'}"  @blur="show" @focus="hide">
                <!-- 当input框获取焦点时，搜索文字才显示 -->
                <div class="search" @click="search" :style="{display:search?'block':'none'}">搜索</div>
            </div>
            <!-- 导航筛选 -->
            <div class="head-bottom">
                <div>                    
                    <mt-navbar v-model="selected">
                        <mt-tab-item id="1">{{this.$route.query.msg}}<img src="../assets/img/向下.png" alt=""></mt-tab-item>
                        <mt-tab-item id="2">出发地<img src="../assets/img/向下.png" alt=""></mt-tab-item>
                        <mt-tab-item id="3">默认排序<img src="../assets/img/向下.png" alt=""></mt-tab-item>
                        <mt-tab-item id="4">筛选<img src="../assets/img/向下.png" alt=""></mt-tab-item>
                    </mt-navbar>
                </div>
                <mt-tab-container v-model="selected">
                    <!-- 详细导航按钮 -->
                    <mt-tab-container-item id="1">
                        <div class="bigbox">
                            <div class="box-item">
                                <p>线路/交通</p>
                                <div class="small-box">
                                    <ul>
                                        <li :class="this.$route.query.key==7?'active':''">游轮</li>
                                        <li>船票</li>
                                        <li :class="this.$route.query.key==2?'active':''">机票</li>
                                        <li>订制游</li>
                                        <li>半自助游</li>                                        
                                        <li>组团游</li>
                                        <li :class="this.$route.query.key==1?'active':''">自由行</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-item">
                                <p>旅行必备</p>
                                <div class="small-box">
                                    <ul>
                                        <li :class="this.$route.query.key==4?'active':''">签证</li>
                                        <li>WiFi</li>
                                        <li>电话卡</li>
                                        <li>保险</li>
                                        <li :class="this.$route.query.key==6?'active':''">酒店</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-item">
                                <p>当地娱乐</p>
                                <div class="small-box">
                                    <ul>
                                        <li>城市交通</li>
                                        <li>深度体验</li>
                                        <li>餐饮美食</li>
                                        <li>度假酒店</li>
                                        <li>购物</li>                                        
                                        <li>门票/票券</li>
                                        <li :class="this.$route.query.key==3?'active':''">日游小团</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-item">
                                <p>交通方式</p>
                                <div class="small-box">
                                    <ul>
                                        <li>火车票</li>
                                        <li>接送大巴</li>
                                        <li>城市交通</li>
                                        <li :class="this.$route.query.key==5?'active':''">租车</li>
                                        <li>观光巴士</li> 
                                    </ul>
                                </div>
                            </div>
                            <div class="box-item"></div>
                        </div>
                    </mt-tab-container-item>
                    <!-- 出发地点 -->
                    <mt-tab-container-item id="2">
                        <div class="bigbox">
                            <div class="box-item">
                                <p>出发地</p>
                                <div class="small-box">
                                    <ul>
                                        <li class="active">全部</li>
                                        <li>北京</li>
                                        <li>上海</li>
                                        <li>深圳</li>
                                        <li>郑州</li>                                        
                                        <li>成都</li>
                                        <li>洛阳</li>
                                        <li>重庆</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </mt-tab-container-item>
                    <!-- 销量排序 -->
                    <mt-tab-container-item id="3">                        
                        <div class="bigbox">
                            <div class="sale">
                                <ul>
                                    <li class="active">综合排序</li>
                                    <li>销量排序</li>
                                </ul>
                            </div>                            
                        </div>
                    </mt-tab-container-item>
                    <mt-tab-container-item id="4">
                        <div class="bigbox">
                            <div class="box-item">
                                <p>城市</p>
                                <div class="small-box">
                                    <ul>
                                        <li class="active">全部</li>
                                        <li>曼谷</li>
                                        <li>清迈</li>
                                        <li>普吉岛</li>
                                        <li>郑州</li>                                        
                                        <li>成都</li>
                                        <li>北京</li>
                                        <li>深圳</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-item">
                                <p>出发时间</p>
                                <div class="small-box">
                                    <ul>
                                        <li class="active">1月</li>
                                        <li>2月</li>
                                        <li>3月</li>
                                        <li>4月</li>
                                        <li>5月</li>
                                        <li>6月</li>
                                        <li>7月</li>
                                        <li>8月</li>
                                        <li>9月</li>
                                        <li>10月</li>                                        
                                        <li>11月</li>
                                        <li>12月</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="box-item">
                                <p>促销服务</p>
                                <div class="small-box">
                                    <ul>
                                        <li class="active">全部</li>
                                        <li>接送机</li>
                                        <li>早餐</li>
                                        <li>保险</li>
                                        <li>一日游</li>                                        
                                        <li>晚餐</li>
                                        <li>酒店</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </mt-tab-container-item>
                </mt-tab-container>
            </div>
        </div>
        <!-- 内容区域 -->
        <div class="sec">
            <div class="sec-item" v-for="(item,i) of task" :key="i">
                <div class="sec-item-img">
                    <img :src="'http://127.0.0.1:5050/'+item.Timg" alt="">
                </div>
                <div class="sec-item-cont">
                    <div class="item-cont-top">{{item.TsuBtitle}}</div>
                    <div class="item-cont-bottom">
                        <div>已售出{{item.Tsale_volume}}件</div>
                        <div><span>{{item.Tprice}}</span>元起</div>
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
            //判断搜索
            search:false,
            //导航状态
            selected:0,
            //商城界面传来的按钮的id值
            selbtn:1,
            //商城导航列表
            task:[],
            //页面跳转传值
            msg:""
        }
    },
    //导航详情的列表
    created() {
        this.axios.get("trunk").then(result=>{
            this.task=result.data.data;//赋值数组
        })
    },
    methods: {
        //隐藏搜索按钮
        show(){
            this.search=false;
        },
        //显示搜索按钮
        hide(){
            this.search=true;
        },
        //返回上一级页面
        go_back(){
            this.$router.go(-1)
        },
        //筛选按钮状态
        // is_sel(event){ 
        //     console.log(event.target);      
        //     var self=event.target.parentNode;
        //     if(self.className.indexOf("is-selected") !=-1){
        //         console.log(self.className);
        //     }
        // }
    },
}
</script>
<style scoped>
.wapper{
    width: 100%;
    box-sizing: border-box;
    font-size: 16px;
}
/* 头部 */
.head{
    width: 100%;
}
.head-top{
    padding: 5px 20px 5px 10px;
    /* 背景颜色渐变 */
    background: linear-gradient(to right,#4FC972,#12C0A4);
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.head-top img{
    width: 30px;
    margin-right: 10px;
}
.head-top input{
    height: 30px;
    border-radius: 20px;
    outline: none;
    border: 0;
    opacity: 0.6;
    padding-left: 20px;
    font-size: 1rem;
}
.head-top .search{
    color: #fff;
    width: 45px;
    margin-left: 5px;
    text-align: center;
    font-size: 1rem;
}
/* 导航按钮 */
.bigbox{
    width: 100%;
    position: fixed;
    background-color: #fff;
}
.box-item{
    padding: 10px;
}
.box-item p{
    text-align: left;
    color: rgb(179, 176, 176);
    font-size: 0.8rem;
    padding-left: 10px;
}   
.small-box ul::after{
    content: "";
    display: block;
    clear: both;
}
.small-box ul li{
    width: 19%;
    height: 24px;
    padding: 5px;
    text-align: center;
    background-color: #F3F4F3;
    float: left;
    margin: 10px 0 0 10px;
    font-size: 0.8rem;
    line-height: 24px;
    border-radius: 5px;
}
.small-box .active{
    background-color: #11BF79;
    color: #fff;
}
.sale{
    margin: 10px 0 0 0;
}
.sale ul li{
    height: 40px;
    line-height: 40px;
    text-align: left;
    padding-left: 10px;
    font-size: 0.9rem;
    border-bottom: 2px solid #E5E5E5;
}
.sale .active{
    color: #11BF79;
}
/* 商品列表 */
.sec{
    width: 100%;
    box-sizing: border-box;
    margin-top: 10px;
}
.sec-item{
    width: 100%;
    height: 100px;
    display: flex;
    justify-content: center;
    margin-top: 15px;
}
.sec-item-img{
    width: 30%;
}
.sec-item-cont{
    width: 60%;
}
.sec-item-img,.sec-item-cont{
    height: 100px;
    padding: 5px;
}
.sec-item-img img{
    width: 100%;
    height: 95%;
}
.item-cont-top{
    overflow: hidden;/*自动隐藏文字*/
    text-overflow: ellipsis;/*文字隐藏后添加省略号*/
    display: -webkit-box;
    -webkit-line-clamp:3; /*想要显示的行数*/
    -webkit-box-orient: vertical;
}
.item-cont-bottom{
    display: flex;
    justify-content: space-between;
    align-items:flex-end;
    margin-top: 10px;
    color: #ccc;
    font-size: 0.95rem;
}
.item-cont-bottom span{
    font-size: 1.3rem;
    color: #FF8174;
}
</style>
