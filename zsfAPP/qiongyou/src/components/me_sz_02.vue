<template>
    <div id="box">
        <ul>
            <li>
                <img src="http://127.0.0.1:5050/login/zuojiantou.png" alt="" class="zuo" @click="fanhui">
                <span class="title">账号与个人资料</span>
            </li>
            <li>
                <span>头像</span>
                <span id="uptTX" class="item_right">
                    <input type="file" class="utx" @change="filed">
                    <img :src="mtx"  class="utx" alt="">
                    <span>&nbsp;&nbsp;&gt;</span>
                </span>
            </li>
            <li v-for="(item,i) of obj" :data-obj="item" :key="i" @click="itemClick">
                <span>{{item.ukey}}</span>
                <span class="item_right">{{item.uvalue==null?"未设置":item.uvalue}}&nbsp;&nbsp;&gt;</span>
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
            uid:"",
            obj:[
                {ukey:"用户昵称",utitle:"uname",uvalue:""},
                {ukey:"性别",utitle:"usex",uvalue:""},
                {ukey:"出生日期",utitle:"ubirthday",uvalue:""},
                {ukey:"常居城市",utitle:"uborn",uvalue:""},
                {ukey:"个人简介",utitle:"upslst",uvalue:""},
            ],
            mtx:"http://127.0.0.1:5050/me/ktouxiang.png"
        }
    },
    methods: {
        fanhui(){
            this.$router.push("tabbar");
        },
        load(){
            var uid =sessionStorage.getItem("uid");
            this.uid=uid;
            if(uid!=undefined){
                this.mtx=this.$route.query.txurl;
                this.axios("user/me",{params:{uid}}).then(res=>{
                    // console.log(res.data);
                    this.obj[0].uvalue=res.data[0].uname;
                    this.obj[1].uvalue=res.data[0].usex;
                    this.obj[2].uvalue=res.data[0].ubirthday;
                    this.obj[3].uvalue=res.data[0].uborn;
                    this.obj[4].uvalue=res.data[0].upslst;
                    // console.log(this.obj[0].uvalue);
                })
            }
        },
        removeS(){
            sessionStorage.removeItem("uid");
            this.$router.go(-1);
        },
        itemClick(e){
            var obj=e.target.dataset.obj;
            this.$router.push({path:"me_sz_01_u",query:obj});
        },
        filed(e){
            var file=e.currentTarget.files[0];
            var reader=new FileReader();
            reader.readAsDataURL(file);
            // reader.onload=function(e){
            //  _this.mtx=e.target.result;
            // }
            // console.log(file);
            var params = new FormData();
            params.append("file",file);
            var config = {
                headers:{'Content-Type': 'multipart/form-data'}
            };
            this.axios.post("file/upload/timg",params,config).then(res=>{
                if(res.data.err == 0){
                    console.log("上传失败");
                }else{
                    console.log(res);
                    var uid=this.uid;
                    var utitle="uheadportrait";    //数据库头像列名
                    var uvalue=res.data.img;     //图片路径
                    this.axios.get("user/us_upt",{params:{
                        uid,utitle,uvalue
                    }}).then(res=>{
                        if(res.data.code==1){
                            this.$messagebox("消息","头像上传成功")
                            this.mtx=uvalue;
                        }
                    })
                }
            })
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
    #uptTX{
        margin-right:5%;
        position: relative;
    }
    #uptTX>.utx{
        position: absolute;
        top: 0;
        left:0;
        width:2.5rem;
        height:2.5rem;
        border-radius: 50%;
    }
    #uptTX>.utx:first-child{
        opacity:0;
        z-index:1;
    }
</style>