<template>
   <div class="page-tabbar">
      <div class="page-wrap">
      <!--1:切换面板列表-->
      <mt-tab-container  class="page-tabbar-container" v-model="active">
        <mt-tab-container-item id="message">
              <index v-on:child-id="listen_uid"></index>
        </mt-tab-container-item>
        <!-- <mt-tab-container-item id="contact">
              <h1>111</h1>
        </mt-tab-container-item> -->
        <mt-tab-container-item id="find">
              <shop></shop>
        </mt-tab-container-item>
        <mt-tab-container-item id="me">
               <me></me>
        </mt-tab-container-item>
      </mt-tab-container>
      <!--2:tabbar列表-->
      <!--为每个按钮绑定点击事件-->
      <!--当前按钮isSelect:true-->
      <!--其它按钮isSelect:false-->
      <mt-tabbar v-model="active" fixed>
        <mt-tab-item id="message" @click.native="changeState(0)">
         <tabbaricon
          :selectedImage="require('../assets/img/shouye2.png')"
          :normalImage="require('../assets/img/shouye1.png')"
          :focused="currentIndex[0].isSelect">
         </tabbaricon>
         首页   
        </mt-tab-item>
        <mt-tab-item id="contact" @click.native="changeState(1)">
         <tabbaricon
         :normalImage="require('../assets/img/jiudian1.png')"
         :selectedImage="require('../assets/img/jiudian2.png')"
         :focused="currentIndex[1].isSelect">
         </tabbaricon>
         酒店
        </mt-tab-item>
        <mt-tab-item id="find" @click.native="changeState(2)">
          <tabbaricon
          :normalImage="require('../assets/img/shangcheng1.png')"
          :selectedImage="require('../assets/img/shangcheng2.png')"
          :focused="currentIndex[2].isSelect">
          </tabbaricon>
          商城
        </mt-tab-item>
        <mt-tab-item id="me" @click.native="changeState(3)">
          <tabbaricon
           :normalImage="require('../assets/img/wode1.png')"
           :selectedImage="require('../assets/img/wode2.png')"
           :focused="currentIndex[3].isSelect"
          ></tabbaricon>
          我的
        </mt-tab-item>
      </mt-tabbar>
   </div>
   </div>
</template>
<script>
import TabBarIcon from "./TabBarlcon.vue"
import index from "./index.vue"
import shop from "./shop.vue"
import me from "./me.vue"
export default {
   components:{
        "index":index,
        "shop":shop,
        "me":me,
        "tabbaricon":TabBarIcon
   },
  data(){
    return {
      //面板中显示子组件id
      active:"message",
      //创建数组保存图片焦点状态
      currentIndex:[
        {isSelect:true},
        {isSelect:false},
        {isSelect:false},
        {isSelect:false}
      ]
    }
  },
  methods:{
    changeState(n){
      //函数功能:将当前参数下标
      //对应数组值修改true其它修改false
      //1:创建循环,循环数组中内容
      for(var i=0;i<this.currentIndex.length;i++){
       //2:判断如果循环下标与n相等 20
       if(n==i){
        //3:当前下标元素true 10:22
        this.currentIndex[i].isSelect=true;
       }else{
        //4:其它元素修改false
        this.currentIndex[i].isSelect=false;
       }
      }
    },
    listen_uid(uid){
      if(uid!=undefined){
          this.changeState(3);
          this.active="me";
      }
    }   
  }
}
</script>
<style  scoped>
/*最外层父元素Home.vue*/
.page-tabbar{
  overflow: hidden;/*溢出隐藏*/
}
/*修改 tabbar 默认文字颜色*/
.mint-tabbar>.mint-tab-item{
  color:#999999;
}
/*修改默认tab选中文字样式*/
.mint-tabbar>.mint-tab-item.is-selected{
  background-color: transparent;
  color:#45c018;
}

.page-wrap{
  overflow:auto;/*溢出显示轮动条*/
  padding-bottom: 60px;
}
</style>