<template>
    <div class="container">
        <div class="tou">
            <img @click="fanhui" src="../assets/img/pinglun/zuojiantou.png" alt="">
            <img src="../assets/img/pinglun/shengluehao.png" alt="">
        </div>
        <div class="shang" v-for="(item,index) in list" :key="index">
            <div class="shang1">
                <div class="shang1_1">
                    <img src="../assets/img/pinglun/touxiang.jpg" alt="">
                    <div>
                    <p>海绵宝宝</p>
                    <van-rate
                    v-model="item.grade"
                    :size="12"
                    color="#ee0a24"
                    void-icon="star"
                    void-color="#eee"
                    readonly
                    />
                    </div>
                </div>
                <p>{{item.time.substring(0,10)}}</p>
            </div>
            <div class="shang2">
                <span>{{item.content}}</span>
            </div>
        </div>
    </div>
</template>


<script>
export default {
    data(){
        return {
            value:4,
            cid:1, 
            lid:"",
            neirong:"建档立卡建档立卡",
            shijian:"2018-04-24",
            pingfen:5,
            list:[
                
            ]
        }
    },
    methods: {
        fanhui(){
            this.$router.go(-1)
        },
        
        load(){
            this.lid=this.$route.query.lid;
            this.axios.get("comments/showcom",{params:{
                lid:this.lid
            }}).then(res=>{
                // console.log(typeof res.data.data[0].time);
                this.list=res.data.data;
            })
        }
    }, 
    created(){
        this.load();
        // this.axios.get("/jiekou",{
        //     params:{
        //         cid:this.cid, 
        //         neirong:this.neirong,
        //         pingfen:this.pingfen,
        //         shijian:this.shijian,
        //         lid:this.lid
        //     }
        // }).then(result=>{
        //     console.log(uid,neirong,pingfen,shijian,lid);
        // })
    }
}
</script>


<style scoped>
body{
    background-color: #e8e8e8;
}
.container{
    width:100%;
}
.tou{
    display:flex;
    width:100%;
    border-bottom: 1px solid #e8e8e8;
    justify-content:space-between;
    padding:0.45rem;
    box-sizing: border-box;
}
.shang{
    width:100%;
}
.shang1{
    padding:0.25rem ;
    display: flex;
    justify-content: space-between;
}
.shang1_1{
    display: flex;
}
.shang1_1 img{
    width:2rem;
    border-radius: 50%;
    height:2rem;
}
.shang2{
    padding:0.25rem;
    border-bottom: 1px solid #e8e8e8;
}
</style>

