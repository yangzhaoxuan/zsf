<template>
    <div id="box">
        <ul>
            <li>
                <img src="http://127.0.0.1:5050/login/zuojiantou.png" alt="" class="zuo" @click="fanhui">
                <span class="title">账号管理</span>
            </li>
            <li v-for="(item,i) of obj" :key="i">
                <router-link :to="{path:'me_sz_01_u/',query:{item}}">{{item.ukey}}</router-link>
                <span class="item_right">{{item.uvalue==null?"未绑定":item.uvalue}}&nbsp;&nbsp;&gt;</span>
            </li>
            <li>
                <router-link to="">修改密码</router-link>
                <span class="item_right">&gt;</span>
            </li>
        </ul>
        <mt-button id="btn" @click="removeS()">退出当前账号</mt-button>
    </div>
</template>
<script>
export default {
    data(){
        return{
            obj:[
                {ukey:"手机号",utitle:"uphone",uvalue:""},
                {ukey:"绑定邮箱",utitle:"uemail",uvalue:""},
                {ukey:"绑定淘宝号",utitle:"utb",uvalue:""},
                {ukey:"绑定微信号",utitle:"uwx",uvalue:""},
                {ukey:"绑定QQ号",utitle:"uqq",uvalue:""},
                {ukey:"绑定微博号",utitle:"uwb",uvalue:""},
            ]
        }
    },
    methods: {
        fanhui(){
            this.$router.push("tabbar");
        },
        load(){
            var uid =sessionStorage.getItem("uid");
            if(uid!=undefined){
                this.axios("user/me",{params:{uid}}).then(res=>{
                    this.obj[0].uvalue=res.data[0].uphone;
                    this.obj[1].uvalue=res.data[0].uemail;
                    this.obj[2].uvalue=res.data[0].utb;
                    this.obj[3].uvalue=res.data[0].uwx;
                    this.obj[4].uvalue=res.data[0].uqq;
                    this.obj[5].uvalue=res.data[0].uwb;
                })
            }
        },
        removeS(){
            sessionStorage.removeItem("uid");
            this.$router.push("/");
        }
    },
    created() {
        this.load();
    },
}
</script>
<style lang="" scoped>
    a{
        text-decoration: none;
    }
    .title{
        font-size: 1.3rem;
        margin: 0 auto;
    }
    #box{
        position: relative;
        height:100%;
    }
    .zuo{
        width:1.7rem;
        height:1.7rem;
        padding-top: 0.5rem;
    }
    #btn{
        position: absolute;
        width: 100%;
        text-align: center;
        height:3rem;
        line-height:3rem;
        font-size:1rem;
        background: #eee;
        bottom: 0;
        left:0;
    }
    div>ul>li{
        display: flex;
        justify-content: space-between;
        height:2.7rem;
        line-height: 2.7rem;
        border-bottom:0.1rem solid #eee;
        padding-left:0.4rem;
        padding-right:0.4rem;
    }
    div>ul>li>a{
        font-size:1.rem;
        color:grey;
    }
    .item_right{
        color:lightgray;
    }
    
</style>