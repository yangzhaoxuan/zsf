<template>
    <div class="details">
        <div class="top">
            <div class="logo">
                <img src="../../src/assets/img/logo.png" alt="" @click="go_back">
            </div>
            <div class="top-left">                
                <img src="../../src/assets/img/details/touxiang.jpg" alt="">
                <span>活猪子</span>
            </div>
            <div>+&nbsp;关注</div>
        </div>
        <div class="mainimg">
            <img src="../assets/img/details/munihei.jpg" alt="">
        </div>
        <div class="maintext">
            <p>慕尼黑啤酒节开幕大赏！两只眼里只有重金属，酒精和黑暗反应的化学博士去德国会干什么？</p>
            <p>当然是。。。研究啤酒，和德国人！</p>
            <p>平日一本正经的德国人，在十月的某几天，会在酒精的鼓动之下书写许多故事，等待我们慢慢品味。。。</p>
            <p>如果你在深夜来到啤酒节现场，你就仿佛来到了大型秀场。有手舞足蹈的，有走路歪斜的，有倒地不起的，更多的是男默女泪，一路上，不停的看到男生捧起女生哭泣的脸。</p>
            <p>没错，在这样热闹到近乎疯狂的节日之中，陌生的，在酒精催化下迅速相识，熟识的，在酒精的摧残下变的陌生。</p>
        </div>
        <div class="maintype">
            <div>
                <span>#我要赢机票</span>
                <span>#这组照片值回机票</span>
            </div>
            <div>
                <span>#2018旅行回忆</span>
                <span>#慕尼黑</span>
            </div>
            <div>
                <div>
                    <span>#</span>
                    <span>我要赢机票</span>
                </div>
            </div>
        </div>
        <div class="riqi">
            发布于01-11
        </div>
        <div class="icon_box">
            <span>2019</span>
            <img src="../assets/img/details/zan.png" alt="">
            <span>456</span>
            <img src="../assets/img/details/xingxing.png" alt="">
            <span>2016</span>
            <img src="../assets/img/details/msg.png" alt="">     
        </div>
        <div class="pinglun">
            <div>
                <div>
                    <span>加一条百科：</span>
                    <span>看着看着吹了一瓶啤酒</span>
                </div>
                <div>
                    <span>加一条百科：</span>
                    <span>看着看着吹了一瓶啤酒</span>
                </div>
                <span>共33条评论</span>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods: {
        go_back(){
            this.$router.go(-1)
        }
    },
}
</script>
<style scoped>
.top{
    display: flex;
    justify-content: space-around;
    align-items: center; 
    padding: 0.5rem;
}
.logo img{
    width: 25%;
    border-radius: 5px;
}
.top-left{
    display: flex;
    align-items: center;
}
.top-left>img{
    width: 25%;
    padding:0 1rem 0 0;
}
.top>div:last-child{
    width: 8rem;
    border: 0.05rem solid #ccc;
    padding: 0.25rem 0.5rem;
    border-radius: 1.75rem;
}
.mainimg>img{
    width: 100%;
    margin: 0.5rem 0;
}
.maintext{
    padding: 0 1rem;
    font-size: 0.75rem;
}
.maintext>p{
    margin-bottom: 0.75rem;
}
.maintype{
    color: #0095d0;
    font-size: 0.75rem;
    padding: 0.25rem 1rem;
}
.maintype span{
    padding: 0 0.25rem;
}
.maintype>div:last-child>div{
    width: 30%;
    border-radius: 1.5rem;
    display: flex;
    justify-content: center;
    border: 1px solid #ff5159;
    padding: 0.25rem 0 ;
    align-items: center;
}
.maintype>div:last-child>div>span{
    padding: 0;
    color: #ff5159;
}
.maintype>div:last-child>div>span:first-child{
    border-radius: 50%;
    background: #ff5159;
    color: #fff;
    width:1rem;
    height: 1rem;
    display: block;
    text-align: center;
}
.riqi{
    margin: 0.95rem 0.95rem 0.12rem;
    font-size: 0.85rem;
    color: #bbbbbb;
}
.icon_box{
    display: flex;
    flex-flow: row-reverse wrap;
    align-items: center;
}
.icon_box>span{
    padding: 0 0.25rem;
}
.pinglun{
    padding: 0.2rem 1rem;
    margin-top: 1rem;
}
.pinglun>div{
    background: #f0f0f0;
    padding:.5rem 1rem;
    border-radius: 1rem;
}
.pinglun>div>span{
    color: #ccc;
}
</style>