<template>
 <div>
     <div id="head">
         <img id="fanhui" src="http://127.0.0.1:5050/login/zuojiantou.png" alt="" @click="fh">
     </div>
    <div id="sbody">
        <h1>Hi,</h1>
        <h1>欢迎开启四方之旅</h1>
        <p>已发送至{{uphone}}</p>
        <div id="text">
            <input type="text" id="i1" class="ipt" maxlength="1" @input="tz(0)">
            <input type="text" class="ipt" maxlength="1" @input="tz(1)">
            <input type="text" class="ipt" maxlength="1" @input="tz(2)">
            <input type="text" class="ipt" maxlength="1" @input="tz(3)">
            <input type="text" class="ipt" maxlength="1" @input="tz(4)">
            <input type="text" class="ipt" maxlength="1" @input="tz(5)">
        </div>
        <div id="cxfs">
            <router-link to="">账号密码登录</router-link>
            <router-link to="">忘记密码</router-link>
        </div>
    </div>
</div>
</template>
<script>

export default {
    data() {
        return {
            uphone:"",
            upwd:""
        }
    },
    methods:{
        fh(){
            this.$router.push("login");
        },
        tz(n){
            if(n<5){
                document.getElementsByClassName("ipt")[n+1].focus();
            }else{
                var items=document.getElementsByClassName("ipt");
                var str="";
                for(var i=0;i<6;i++){
                    str+=items[i].value;
                }
                this.upwd=str;
                console.log(this.uphone,this.upwd);
                this.login();
            }
        },
        login(){ 
            var regupwd = /^\w{3,9}$/;
            if(!regupwd.test(this.upwd)) {
                this.$toast('密码长度不对');
            }else{
                this.axios.get("user/userLogin",{params:{
                    uphone:this.uphone,
                    upwd:this.upwd
                }}).then(res => {
                    if(res.data.uid!=undefined){
                        sessionStorage.setItem("uid",res.data.uid);
                        this.$toast("恭喜用户id为"+res.data.uid+"的用户登陆成功");
                        this.$router.push({path:"/",query:{uid:res.data.uid}})
                    }else{
                        this.$toast("密码错误");
                        this.$router.go(-1);
                    }
                            
                })
            }   
        }
    },
    created() {
        this.uphone=this.$route.query.uphone;
    },
    mounted() {
        document.getElementById("i1").focus();
    },
}
</script>
<style lang="" scoped>
a{
    text-decoration: none;
}
#head{
    width:100%;
    height:3rem;
}
#fanhui{
    width:2rem;
    height:2rem;
    float: left;
    padding:1rem;
}
#sbody{
    padding-left:1.2rem;
    padding-right:1.2rem;
    margin-top:1rem;
}
#sbody>p{
    margin-top:1rem;
    font-size:0.8rem;
    color:grey;
}
#text{
    margin-top: 1rem;
    display: flex;
    justify-content: space-between;
}
#text>.ipt{
    width:14%;
    height:3.5rem;
    background: #eee;
    border: none;
    outline: none;
    text-align: center;
}
#cxfs{
    display: flex;
    justify-content: space-between;
}
#cxfs>a{
    font-size:0.9rem;
    color: black;
}
</style>
