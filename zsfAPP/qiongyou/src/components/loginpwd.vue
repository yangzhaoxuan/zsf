<template>
 <div>
     <div id="head">
         <router-link to="/"><img id="quxiao" src="http://127.0.0.1:5050/login/quxiao.png" alt=""></router-link>
     </div>
    <div id="sbody">
        <h1>Hi,</h1>
        <h1>欢迎开启四方之旅</h1>
        <div id="utext">
            <div class="shuru"><img src="http://127.0.0.1:5050/login/yh.png" alt=""><input name="用户名" id="uphone" placeholder="请输入手机号/邮箱/用户名" class="span" @blur="ublur"  v-model="uphone"></div>
            <div class="shuru"><img src="http://127.0.0.1:5050/login/mima.png" alt=""><input name="密码" id="upwd" placeholder="输入密码" class="span" @blur="pblur"  v-model="upwd" @input="textchange"></div>
            <mt-button id="btn"  @click="login">登录</mt-button>
            <div id="zmdl">
                <router-link to="login">短信验证码登陆</router-link>
                <router-link to="">忘记密码?</router-link>
            </div>
        </div>
    </div>
</div>
</template>
<script>

export default {
   data() {
        return {
            uphone:'',
            upwd:'',
            isU:false,
            ISp:false
        }
    },
    methods:{
        textchange(e){ 
            var btn=document.getElementById("btn");
            if(e.target.value!=""){
                btn.style.opacity="1";
            }else{
                btn.style.opacity="0.4";
            }
        },
        ublur(){
            var regphone= /^1[3,5,7,8,9]\d{9}$/;
            if(!regphone.test(this.uphone)) {
                this.$toast('用户名格式不对');
                this.isU=false;
            }else{
                this.isU=true;
            }
        },
        pblur(){
            var regupwd = /^\w{6,12}$/;
            if(!regupwd.test(this.upwd)) {
                this.$toast('密码长度不对');
                this.isP=false;
            }else{
                this.isP=true;
            }
        },
        login(){ 
            if(this.isU&&this.isP) {
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
                    }          
                })
            }else{
                this.$toast("手机号或密码错误");
            }   
        }
    }   
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
#quxiao{
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
#utext{
    margin-top:2rem;
    font-size:1.8rem;
}
#utext>.shuru{
    height:2.5rem;
    line-height:2.5rem;
    border-bottom:0.13rem solid #eee;
}
#utext>.shuru>img{
    margin-left:0.5rem;
    width:1.4rem;
    height:1.4rem;
    vertical-align:middle;  
}
.span{
    font-size:0.8rem;
    margin-left: 0.6rem;
    width:85%;
    height:1.8rem;
    border:none;
}
#btn{
    width:98%;
    height:2.5rem;
    border-radius:2.5rem;
    /* background:#33cc99; */
    background: rgb(21,219,145);
    color:white;
    opacity:0.4;
    font-size:0.8rem;
    margin-top:1.1rem;
}
#zmdl{
    margin-top:1rem;
    display: flex;
    justify-content: space-between;
    padding:0;
}
#zmdl>a{
    color: grey;
    font-size:0.9rem;
}

</style>
