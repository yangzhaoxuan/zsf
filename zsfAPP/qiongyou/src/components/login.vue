<template>
 <div>
     <div id="head">
         <router-link to="/"><img id="quxiao" src="http://127.0.0.1:5050/login/quxiao.png" alt=""></router-link>
     </div>
    <div id="sbody">
        <h1>Hi,</h1>
        <h1>欢迎开启四方之旅</h1>
        <div id="utext">
            <select name="" id="select">
                <option value="+86">+86</option>
                <option value="+85">+85</option>
                <option value="+83">+84</option>
                <option value="+82">+83</option>
                <option value="+81">+82</option>
            </select><input name="用户名" id="uphone" placeholder="请输入手机号" class="span" @blur="iblur"  v-model="uphone" @input="textchange">
            <span class="span" style="display:block">未注册手机验证后自动创建</span>
            <mt-button id="btn"  @click="yz()">获取验证码</mt-button>
            <div id="zmdl">
                <router-link to="loginpwd">账号密码登录</router-link>
                <router-link to="">忘记密码</router-link>
            </div>
        </div>
    </div>
    <div id="sfoot">
        <div>
            <router-link to=""><img src="http://127.0.0.1:5050/login/taobao.png" alt=""></router-link>
            <router-link to=""><img src="http://127.0.0.1:5050/login/weixin.png" alt=""></router-link>
            <router-link to=""><img src="http://127.0.0.1:5050/login/qq.png" alt=""></router-link>
            <router-link to=""><img src="http://127.0.0.1:5050/login/weibo.png" alt=""></router-link>
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
            islog:false
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
        iblur(){
            var regphone= /^1[3,5,7,8,9]\d{9}$/;
            if(!regphone.test(this.uphone)) {
                this.$toast('用户名格式不对');
                this.islog=false;
            }else{
                this.islog=true;
            }
        },
        yz(){
            if(this.islog==true){
                this.$router.push({path:"loginYz",query:{uphone:this.uphone}});
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
#select{
    width:3rem;
    border: none;
}
#uphone{
    width:15rem;
    height:2rem;
    border:none;
}
.span{
    font-size:0.8rem;
    color:lightgray;
}
#btn{
    width:100%;
    height:2.2rem;
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
#sfoot{
    margin-top:55%;
    width: 100%;
}
#sfoot>div{
    width:68%;
    margin: 0 auto;
    display: flex;
    justify-content: space-around;
}

#sfoot>div img{
    width:2.3rem;
    height:2.3rem;
}
</style>
