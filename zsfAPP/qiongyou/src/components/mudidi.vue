<template>
    <div class="main">
        <div class="header">
            <div>
                <router-link to="/">
                <img src="../assets/img/logo.png" alt="">
                </router-link>
            </div>
            <div class="search">
                <div>
                    <img src="../assets/img/search.png" alt="">
                </div>
                <input type="text">
            </div>
        </div>
        <main>
            <div class="remen">
                <span>当季热门</span>
                <span>还没有护照？</span>
            </div>
            <div class="yuefen">
                <div class="yuefen1" @click="tmarch(i)"  v-for="(item,i) in yuefen" :key="i">{{item}}月</div>
            </div>
            <div class="guojia">
                    <ul>
                        <li>
                            <router-link to="">
                                <img src="../assets/img/mudidi/eluosi.jpg" alt="">
                                <span>俄罗斯</span>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="">
                                <img src="../assets/img/mudidi/ruishi.jpg" alt="">
                                <span>瑞士</span>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="">
                                <img src="../assets/img/mudidi/xiongyali.jpg" alt="">
                                <span>匈牙利</span>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="">
                                <img src="../assets/img/mudidi/nanfei.jpg" alt="">
                                <span>南非</span>
                            </router-link>
                        </li>
                        <li>
                            <router-link to="">
                                <img src="../assets/img/mudidi/aodaliya.jpg" alt="">
                                <span>澳大利亚</span>
                            </router-link>
                        </li>
                    </ul>
            </div>
            <div class="quanbuguojia">
                <div>
                    <img src="../assets/img/mudidi/guojia.png" alt="">
                    <span>查看全部国家</span>
                </div>
                <div>
                    <img src="../assets/img/mudidi/you.png" alt="">
                </div>
            </div>
            <div class="mianqian">
                <span>免签目的地</span>
                <span>免签是什么?</span>
            </div>
            <div class="mianqianguojia">
                <ul>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/jianpuzhai.jpg" alt="">
                            <span>柬埔寨</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/wukelan.jpg" alt="">
                            <span>乌克兰</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/yuenan.jpg" alt="">
                            <span>越南</span>
                        </router-link>
                    </li>
                </ul>
            </div>
            <div class="haidao">
                <span>人气海岛</span>
                <span>廉航预定指南</span>
            </div>
            <div class="mianqianguojia">
                <ul>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/pujidao.jpg" alt="">
                            <span>普吉岛</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/balidao.jpg" alt="">
                            <span>巴厘岛</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/maerdaifu.jpg" alt="">
                            <span>马尔代夫</span>
                        </router-link>
                    </li>
                     <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/shaba.jpg" alt="">
                            <span>沙巴岛</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/jiami.jpg" alt="">
                            <span>甲米</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/chongsheng.jpg" alt="">
                            <span>冲绳</span>
                        </router-link>
                    </li>
                </ul>
            </div>
            <div class="tuijian-title">
                <span>主题推荐</span>
            </div>
            <div class="tuijian-warp">
                <ul>
                    <li>俯瞰城市</li>
                    <li>怀旧时光</li>
                    <li>美丽夜色</li>
                    <li>神秘遗址</li>
                    <li>最爱小镇</li>
                </ul>
            </div>
            <div class="tuijian-main">
                <ul>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/suipiandasha.jpg" alt="">
                            <span>碎片大厦</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/taipingshan.jpg" alt="">
                            <span>太平山</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/liubenmuxin.jpg" alt="">
                            <span>六本木新城</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/mikailangqiqluo.jpg" alt="">
                            <span>米开朗琪罗广场</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/xiangshan.jpg" alt="">
                            <span>象山</span>
                        </router-link>
                    </li>
                    <li>
                        <router-link to="">
                            <img src="../assets/img/mudidi/mengpanasi.jpg" alt="">
                            <span>蒙帕纳斯大楼</span>
                        </router-link>
                    </li>
                </ul>
            </div>
        </main>
    </div>
</template>
<script>
export default {
    data() {
        return {
            yuefen:[1,2,3,4,5,6,7,8,9,10,11,12],
            val:'',
        }
    },
    methods: {
        tmarch(j){
            var child=document.querySelectorAll('.yuefen1');
            var date=new Date().getMonth(); 
            if(j==undefined){
                j=date;
            }
            for(var i=0;i<child.length;i++){
                if(j==i){
                    console.log(j);
                    child[i].style.color="#fff";
                    child[i].style.background="#11bf79";
                }else{
                    child[i].style.color="#000";
                    child[i].style.background="#fff";
                }
            }

        },

    },
    created() {
    },
    mounted() {
        this.tmarch();
    },
}
</script>
<style scoped>
.header{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding:.5rem 1rem;
    box-sizing: border-box;
}
.header>div:first-child{
    width: 20%;
}
.header>div:first-child>a>img{
    width: 100%;
}
.header>div.search{
    border: 1px solid #ccc;
    border-radius: 0.75rem;
    width: 1.5rem;
    width: 75%;
    display: flex;
    justify-content: center;
    align-items: center;
    background:#f0f0f0;
}
.header>div.search>input{
    border-width: 0;
    height: 1.5rem;
    width: 85%;
    border: none;
    outline: 0;
    background: #f0f0f0;
}
main{
    background: #f0f0f0;
}
.remen,.mianqian,.haidao,.tuijian-title{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding:1rem 1rem 0;
    color: #11bf79;
    font-size: 0.75rem;
}
.remen>span:first-child,
.mianqian>span:first-child,
.haidao>span:first-child,
.tuijian-title>span{
    font-size: 1.25rem;
    font-weight: 600;
    color: #000;
}
.yuefen{
    margin-top: 1rem;
    display: flex;
    overflow-y: auto;
    width: 100%;
}

.yuefen>.yuefen1{
    border: 1px solid #ccc;
    border-radius: 0.25rem;
    display:inline-block;
    margin:0 .5rem;
    white-space: nowrap;
    padding: .25rem 1rem;
    width: 50%;
    background: #fff;
}
.yuefen::-webkit-scrollbar{
    display: none;
}
.guojia,.mianqianguojia{
    overflow: hidden;
    margin: 1.5rem 0;
}
.guojia>ul,.mianqianguojia>ul{
    overflow-y: auto;
    white-space: nowrap;
}
.guojia>ul::-webkit-scrollbar,
.mianqianguojia>ul::-webkit-scrollbar{
    display: none;
}
.guojia>ul>li,
.mianqianguojia>ul>li{
    width: 40%;
    margin:0 2% ;
    display: inline-block;
    border-radius: .75rem;
    overflow: hidden;
}
.guojia>ul>li>a,
.mianqianguojia>ul>li>a{
    width: 100%;
    position: relative;
}
.guojia>ul>li>a>img,
.mianqianguojia>ul>li>a>img{
    width: 100%;
}
.guojia>ul>li>a>span,
.mianqianguojia>ul>li>a>span{
    position: absolute;
    left: 2rem;
    color: #fff;
    bottom: 1rem;
}
.quanbuguojia{
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 0.75rem 1rem;
    margin: 1rem 1rem;
    background: #fff;
    border-radius: 0.5rem;
}
.quanbuguojia span{
    display: block;
    padding-left: 0.5rem;
    font-size: 0.85rem;
}
.quanbuguojia>div:first-child{
    display: flex;
    width: 50%;
    align-items: center;
}
.quanbuguojia>div:first-child>img{
    width: 15%;
    height: 15%;
}
.tuijian-warp{
    overflow: hidden;
    margin:1rem 0 ;
}
.tuijian-warp>ul{
    display: flex;
    overflow-y: auto;
}
.tuijian-warp>ul>li{
    white-space: nowrap;
    display: inline-block;
    border: 1px solid #ccc;
    padding: 0.25rem .5rem;
    margin: 0 2%;
    background: #fff;
}
.tuijian-warp>ul::-webkit-scrollbar{
    display: none;
}
a{
    text-decoration: none;
    color: #000;
}
.tuijian-main>ul{
    display: flex;
    justify-content: space-around;
    flex-flow: row wrap;
    text-align: center;
}
.tuijian-main>ul>li{
    width: 30%;
    border-radius: 0.5rem;
    overflow: hidden;
}
.tuijian-main>ul>li>a>img{
    width: 100%;
}
.tuijian-main>ul>li>a>span{
    display: block;
    margin: 0.25rem  0 .5rem 0;
}
</style>