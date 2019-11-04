<template>
    <div id="box">
        <ul>
            <li>
                <img src="http://127.0.0.1:5050/login/zuojiantou.png" alt="" class="zuo" @click="fanhui">
            </li>
            <li>
                输入新的{{ukey}}:
            </li>
            <li>
                <input type="text" id="ipt">
            </li>
            <li>
                <mt-button id="btn" @click="upt">确认修改{{ukey}}</mt-button>
            </li>
        </ul>
    </div>
</template>
<script>
export default {
    data(){
        return{
            ukey:"",
            utitle:"",
            uvalue:""
        }
    },
    created() {
        console.log(this.$route.query.item)
        this.load();
    },
    methods:{
        fanhui(){
            this.$router.go(-1);
        },
        load(){
            this.ukey=this.$route.query.item.ukey;
            this.utitle=this.$route.query.item.utitle;
        },
        upt(){
            var uid=sessionStorage.getItem("uid");
            var ipt=document.getElementById("ipt").value;
            if(uid!=undefined){
                this.axios.get("user/us_upt",{params:{
                    uid:uid,
                    utitle:this.utitle,
                    uvalue:ipt
                }}).then(res=>{
                    var result=res.data.code;
                    if(result==1){
                        this.$toast("修改成功");
                    }else{
                        this.$toast("修改失败");
                    }
                })
            }
        }
    }
}
</script>
<style lang="" scoped>
    a{
        text-decoration: none;
    }
    #box{
        height:100%;
    }
    .zuo{
        width:1.7rem;
        height:1.7rem;
        padding-top: 0.5rem;
    }
    div>ul>li{
        width: 100%;
        height:3rem;
        line-height: 3rem;
        border-bottom: 0.2rem solid #eee;
        font-size:1.3rem;
       
    }
    div>ul>li:nth-child(n+3){
        text-align: center;
    }
    #ipt{
        /* padding:0;
        margin:0; */
        width:100%;
        height:2.8rem;
        border: none;
        outline:0;
        font-size:1.3rem;
    }
    #btn{
        width: 100%;
        height:3rem;
        background:orange;
        color:white;
        font-size:1.3rem;
    }
</style>