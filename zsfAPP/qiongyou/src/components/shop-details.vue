<template>
    <!-- 顶部两端按钮 中间三个a标签 -->
<div class="q">
    <div class="top">
        <router-link to="/" class="a1">
            <img src="../assets/img/shop/details/lvsezuojiantou.png" alt="">
        </router-link>
        <div class="toubu">
            <ul>
                <router-link style="color:green;" to="/" tag="li">商品</router-link>
                <router-link to="/" tag="li">详情</router-link>
                <router-link to="/" tag="li">推荐</router-link>
            </ul>
        </div>
        <router-link to="/" class="a1">
            <img src="../assets/img/shop/details/lvseshengluehao.png" alt="">
        </router-link>
    </div>
    <!-- 轮播图 -->
    <div class="tu">
        <mt-swipe :auto="3000" :speed="300" class="b1" >
            <mt-swipe-item class="item" v-for="(item,i) of Imgs" :key="i">
                <img :src="'http://127.0.0.1:5050/'+item.timg_url" alt="">
            </mt-swipe-item>
        </mt-swipe>
    </div>
    <!-- 标题 -->
    <div class="biaoti">
        <!-- 上部分 -->
        <div class="shang">
            <p>
            {{obj.TsuBtitle}}
            </p>
        </div>
        <!-- 下部分 -->
        <div class="xia">
            <!-- 左边部分 -->
            <div class="zuo">
                <span>
                    <em>{{obj.T_re_price}}</em>   元起
                </span>
                <router-link class="lvse" to="/">底价指南</router-link>
            </div>
            <!-- 右边部分 -->
            <div class="you">
                <div class="you1">浏览  <span>{{obj.Tsee}}</span></div>
                <div class="you2">已售  <span>{{obj.Tsale_volume}}份</span></div>
            </div>
        </div>
        <!-- 限时立减 -->
        <div class="xianshi">限时立减</div>
    </div>
    <!-- 限时立减 -->
    <div class="xs">
        <p><span>限时立减</span> 限时立减100元,09-26 00:00开抢</p>
    </div>
    <!-- 出发日期 -->
    <div class="riqi">
        <div class="riqizuo">
            <div class="riqizuo1">
                <img src="../assets/img/shop/details/riqi.png" alt="">
                选择 产品类型/日期
            </div>
            <div class="riqizuo2">
                10月、11月、12月 多日期出发
            </div>
        </div>
        <div class="riqiyou">
            <img src="../assets/img/shop/details/youjiantou.png" alt="">
        </div>
    </div>

    <!-- 提示付款 -->
    <div class="tishi">
        <div class="tishizuo">
            <img src="../assets/img/shop/details/erciqueren.png" alt="">
            <span>二次确认</span>
        </div>
        <div class="tishiyou">
            <p>付款成功后,需待商家二次确认是否可以出行请至少提前3天预订</p>
        </div>
    </div>
    <!-- 点评 -->
    <div class="dianping">
        <div class="dianpingshang">
            <div class="dianpingshangzuo">
                <img src="../assets/img/shop/details/dianping.png" alt="">
                <span>点评</span>
            </div>
            <div class="dianpingshangyou">
                <img src="../assets/img/shop/details/wuxing.png" alt="">
                <img src="../assets/img/shop/details/wuxing.png" alt="">
                <img src="../assets/img/shop/details/wuxing.png" alt="">
                <img src="../assets/img/shop/details/wuxing.png" alt="">
                <img src="../assets/img/shop/details/wuxing.png" alt="">
            </div>
        </div>
        <div class="dianpingzhong">
            <p>{{}}</p>
        </div>
        <div class="dianpingxia">
            <button class="dpbtn" @click="qianjin">查看全部评价</button>
        </div>
    </div>
<!-- 店铺 -->
<div class="dianpu">
    <div class="dianpuzuo">
        <div class="dianpuzuoshang">
            <h5>走四方旅游网</h5>
            <img src="../assets/img/shop/details/renzheng.png" alt="">
        </div>
        <div class="dianpuzuoxia">
            <div class="dianpuzuoxiazuo">
                <img src="../assets/img/shop/details/ruzhushangjia.png" alt="">
                <p>入驻商家</p>
            </div>
            <div class="dianpuzuoxiayou">
                <img src="../assets/img/shop/details/renzhengshangjia.png" alt="">
                <p>认证商家</p>
            </div>
        </div>
    </div>

    <div class="dianpuyou">
        <mt-button style="background-color:green;color:#fff;">店铺</mt-button>
    </div>
</div>
<!-- 产品简介 -->
<div>
<!--产品简介按钮-->
<mt-navbar v-model="selected">
  <mt-tab-item id="1">产品介绍</mt-tab-item>
  <mt-tab-item id="2">购买须知</mt-tab-item>
</mt-navbar>
</div>
<!--内容区域-->
<mt-tab-container v-model="selected">
    <!--产品介绍-->
         <mt-tab-container-item id="1" class="div1">
            <div class="chanpin">
                <div class="chanpinshang">
                    <h4>产品简介</h4>
                </div>
                <div class="chanpinzhong">
                    <img src="../assets/img/shop/details/dengpao.png" alt="">
                    <p>亮点推荐</p>
                </div>
                <div class="chanpinxia">
                    <p>“直飞航班：北京/天津直飞日本，一站直达，省去转机时间以及旅途劳累</p>
                    <p>行程自由：单机票产品，可根据自己的实际需求安排行程，灵活性更强</p>
                    <p>多目的地：提供大阪/东京/名古屋/东阪/冲绳多个目的地可选，满足不同穷游er需求”</p>
                </div>
            </div>
    <!-- 交通信息 -->
            <div class="jiaotong">
                <div class="jiaotongshang">
                    <h4>交通信息</h4>
                    <p>交通信息仅供参考,最终以供应商确认为准,飞行时长以实际为准</p>
                </div>

                <div class="jiaotongfu">
                    <div class="jiaotongzi1">
                        <p>大阪</p>
                        <p>东航</p>
                    </div>
                    <div class="jiaotongzi2">
                        烟台经停
                    </div>
                </div>

                <div class="jiaotongfu2">
                    <div class="jiaotongfu2zi1">
                        <p>往</p>
                        <p>DAY1中国东方航空MU277</p>
                        <p>经停信息</p>
                    </div>
                    <div class="jiaotongfu2zi2">
                        <div class="jiaotongfu2zi2shang">
                            <p>09:20</p>
                            <p>北京首都国际</p>
                        </div>
                        <div class="jiaotongfu2zi2zhong">
                            <p>4小时</p>
                            <p>——</p>
                        </div>
                        <div class="jiaotongfu2zi2xia">
                            <p>15:30</p>
                            <p>关西</p>
                        </div>
                    </div>
                </div>

                <div class="jiaotongfu2">
                    <div class="jiaotongfu2zi1">
                        <p>返</p>
                        <p>DAY1中国东方航空MU277</p>
                        <p>经停信息</p>
                    </div>
                    <div class="jiaotongfu2zi2">
                        <div class="jiaotongfu2zi2shang">
                            <p>09:20</p>
                            <p>关西</p>
                        </div>
                        <div class="jiaotongfu2zi2zhong">
                            <p>4小时</p>
                            <p>——</p>
                        </div>
                        <div class="jiaotongfu2zi2xia">
                            <p>15:30</p>
                            <p>北京首都国际</p>
                        </div>
                    </div>
                </div>

                <!--  -->
                <div class="jiaotongfu">
                        <div class="jiaotongzi1">
                            <p>大阪</p>
                            <p>东航</p>
                        </div>
                        <div class="jiaotongzi2">
                            烟台经停
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>往</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>返</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>

                <!--  -->
                <div class="jiaotongfu">
                        <div class="jiaotongzi1">
                            <p>大阪</p>
                            <p>东航</p>
                        </div>
                        <div class="jiaotongzi2">
                            烟台经停
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>往</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>返</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>
                <!--  -->
                <div class="jiaotongfu">
                        <div class="jiaotongzi1">
                            <p>大阪</p>
                            <p>东航</p>
                        </div>
                        <div class="jiaotongzi2">
                            烟台经停
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>往</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>返</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>
                <!--  -->
                <div class="jiaotongfu">
                        <div class="jiaotongzi1">
                            <p>大阪</p>
                            <p>东航</p>
                        </div>
                        <div class="jiaotongzi2">
                            烟台经停
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>往</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>返</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>
                <!--  -->
                <div class="jiaotongfu">
                        <div class="jiaotongzi1">
                            <p>大阪</p>
                            <p>东航</p>
                        </div>
                        <div class="jiaotongzi2">
                            烟台经停
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>往</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>返</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>
                <!--  -->
                <div class="jiaotongfu">
                        <div class="jiaotongzi1">
                            <p>大阪</p>
                            <p>东航</p>
                        </div>
                        <div class="jiaotongzi2">
                            烟台经停
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>往</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>返</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>
                <!--  -->
                <div class="jiaotongfu">
                    <div class="jiaotongzi1">
                            <p>大阪</p>
                            <p>东航</p>
                        </div>
                        <div class="jiaotongzi2">
                            烟台经停
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>往</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>

                    <div class="jiaotongfu2">
                        <div class="jiaotongfu2zi1">
                            <p>返</p>
                            <p>DAY1中国东方航空MU277</p>
                            <p>经停信息</p>
                        </div>
                        <div class="jiaotongfu2zi2">
                            <div class="jiaotongfu2zi2shang">
                                <p>09:20</p>
                                <p>北京首都国际</p>
                            </div>
                            <div class="jiaotongfu2zi2zhong">
                                <p>4小时</p>
                                <p>——</p>
                            </div>
                            <div class="jiaotongfu2zi2xia">
                                <p>15:30</p>
                                <p>关西</p>
                            </div>
                        </div>
                    </div>
                <!--  -->
                <!-- 预定流程 -->
                <div class="yuding">
                    <div class="yuding1">
                        <h4>预定流程</h4>
                    </div>
                    <div class="yuding2">
                        <div class="yuding3">
                            <img src="../assets/img/shop/details/shuxian.png" alt="">
                            <h5>二次确认</h5>
                        </div>
                        <div class="yuding4">
                            <p>此产品需二次确认,商家将24个工作小时内核实是否有位</p>
                        </div>
                    </div>
                    <div class="yuding5">
                        <img src="../assets/img/shop/details/shuxian.png" alt="">
                        <h5>预定流程</h5>
                    </div>
                    <div class="yuding6">
                            <img src="../assets/img/shop/details/yuding.jpg" alt="">
                    </div>
                </div>
                <!--  -->
            </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="2">
            <div class="feiyong">
                <div class="feiyong1">
                    <h4>费用说明</h4>
                <p>多成机票需严格按行程顺序使用,如任意一段未使用则后续航段均无法使用</p>
                </div>
                <div class="feiyong2">
                    <img src="../assets/img/shop/details/shuxian.png" alt="">
                    <h5>费用包含</h5>
                </div>
                <div class="feiyong3">
                    <p>1.北京/天津直飞日本4-7天往返含税机票</p>
                </div>
                <div class="feiyong4">
                    <p>注意:由于机票产品库存变化较快,页面上展示航班仅供参考,请与销售核实后,以确认出票为准</p>
                    <p>页面展示航班仅供参考,最终以实际出票为准</p>
                </div>
                <div class="feiyong5">
                    <img src="../assets/img/shop/details/shuxian.png" alt="">
                    <h5>费用不含</h5>
                </div>
                <div class="feiyong6">
                    <p>1. 酒店住宿费用</p>
                    <p>2. 签证费用</p>
                    <p>3. 旅游人身意外保险，建议自行购买</p>
                    <p>4. 升级舱位等产生的差价</p>
                    <p>5. 出入境时由于个人物品引起的费用，如海关征税、托运费、保管费、超重行李费等</p>
                    <p>6. 因交通延阻、罢工、天气、飞机机器故障、航班取消或更改时间等不可抗力原因导致的费用</p>
                    <p>7. 一切个人消费及费用包含中未提及的任何费用</p>
                    <p>8. 【外籍费用】该产品价格只适用于持有中国大陆护照的公民，外籍客人价格需追加200元/人。</p>
                </div>
            </div>
            <!-- 退款政策 -->
            <div class="tuikuan">
                <div class="tuikuan1">
                    <h4>退款政策</h4>
                </div>
                <div class="tuikuan2">
                    <p>走四方商城有独立于商家的质控体系,任何商家违约,用户都会获得合理赔偿,<router-link to="/">详情查看</router-link></p>
                </div>
                <div class="tuikuan3">
                    <p>特价或秒杀的旅行产品（特价旅行产品一般指因促销折价销售的旅行产品；秒杀旅行产品一般指因促销以超低价格销售并要求用户在同一时间网上抢购的旅行产品），因此类旅行产品的特殊性，特提示用户注意，此类产品无法享受7日内无理由退 货的服务。该类旅行产品一旦用户下单并支付成功的，在商家确认前可随时取消并要求退款，在商家确认后则无法申请取消并要求退款。</p>
                </div>
            </div>
            <!-- 推荐行程 -->
            <div class="tuijian">
                <div class="tuijian1">
                    <h4>推荐行程</h4>
                </div>
                <div class="tuijian2">
                    <img src="../assets/img/shop/details/shuxian.png" alt="">
                    <p>参考行程</p>
                </div>
                <div class="tuijian3">
                    <img src="../assets/img/shop/tuijian/01.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/02.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/03.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/04.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/05.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/06.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/07.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/08.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/09.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/10.jpg" alt="">
                    <img src="../assets/img/shop/tuijian/11.jpg" alt="">
                </div>
            </div>
            <!-- 其他说明 -->
            <div class="shuoming">
                <h4>其他说明</h4>
                <p>[限时特价]天津-冲绳国航直飞4天套餐不含WIFI</p>
            </div>

        </mt-tab-container-item>
    </mt-tab-container>

<!-- 猜你喜欢 -->
<div class="xihuan">
    <h4>猜你喜欢</h4>
    <div class="xihuan1">
        <div class="xihuan2" v-for="(item, index) in list" :key="index">
            <router-link to="/">
                <img src="../assets/img/shop/xihuan/1.jpg" alt="">
            </router-link>
            <h6>{{item.title}}</h6>
            <p>{{item.price}}<span>元起</span></p>
        </div>
    </div>
    <div class="xihuan3">
        <span>查看更多特价</span>
    </div>

</div>  <!--猜你喜欢end-->


<!-- 底部固定 -->
<div class="dibua">
<div class="dibu">
    <div class="dibuzuo">
        <div class="dibuzuo1">
            <img src="../assets/img/shop/details/kefu.png" alt="">
            <p> 咨询</p>
        </div>
        <div class="dibuzuo2">
            <img src="../assets/img/shop/details/xin.png" alt="">
            <p> 收藏</p>
        </div>
    </div> 
    <div class="dibuyou">
        <input type="button" @click="getdd" value="立即预定">
    </div>
</div>
</div>
</div>

</template>

<script>
export default {
    data(){
        return {
            lid:"",
            selected:"1",
            list:[
                    {imgurl:"../assets/img/shop/xihuan/1.jpg",title:"北京/天津直飞东京/大阪/札幌/福冈/名古屋2-30天往返含税",price:1599},
                    {imgurl:"../assets/img/shop/xihuan/1.jpg",title:"北京/天津直飞东京/大阪/札幌/福冈/名古屋2-30天往返含税",price:1599},
                    {imgurl:"../assets/img/shop/xihuan/1.jpg",title:"北京/天津直飞东京/大阪/札幌/福冈/名古屋2-30天往返含税",price:1599},
                    {imgurl:"../assets/img/shop/xihuan/1.jpg",title:"北京/天津直飞东京/大阪/札幌/福冈/名古屋2-30天往返含税",price:1180},
                    {imgurl:"../assets/img/shop/xihuan/1.jpg",title:"北京/天津直飞东京/大阪/札幌/福冈/名古屋2-30天往返含税",price:999},
                    {imgurl:"../assets/img/shop/xihuan/1.jpg",title:"北京/天津直飞东京/大阪/札幌/福冈/名古屋2-30天往返含税",price:1099},
                    {imgurl:"../assets/img/shop/xihuan/1.jpg",title:"北京/天津直飞东京/大阪/札幌/福冈/名古屋2-30天往返含税",price:1451},
                    {imgurl:"../assets/img/shop/xihuan/1.jpg",title:"北京/天津直飞东京/大阪/札幌/福冈/名古屋2-30天往返含税",price:899}
            ],
            obj:[],
            Imgs:[]
        }
    },
    methods: {
        load(){
            this.lid=this.$route.query.id;
            this.axios.get("trunk/queryOne",{params:{lid:this.lid}}).then(res=>{
                this.obj=res.data.data[0];
            })
            this.axios.get("trunk/queryOneimg",{params:{lid:this.lid}}).then(res=>{
                // console.log(res.data.data);
                this.Imgs=res.data.data;
            })
        },
        getdd(){
            this.$router.push({path:"order",query:{lid:this.lid}});
        },
        qianjin(){
            this.$router.push({path:"to_comments",query:{lid:this.lid}});
        }
    },
    created() {
        this.load();
        this.xianshi();
    },
}
</script>

<style scoped>
.q{
    height:100%;
    height:100%;
    background-color:#eeeeee;
}
.top{
    width:100%;
    height:2.12rem;
    display: flex;
    justify-content: space-between;
    background-color:#fff;
}
/* 头部 */
.toubu{
    width:40%;
}
.a1 img{
    width:1.87rem;
    height:1.87rem;
}
.top div ul{
    width:100%;
    display: flex;
    justify-content: space-around;
    align-items:center; 
    line-height: 2.2rem;
}
/* 轮播图 */
.tu{
    width:100%;
    height:11.25rem;
}
.tu img{
    width:100%;
    height:100%;
}
/* 标题部分 */
.biaoti{
    width:100%;
    height:7.81rem;
    background-color:#fff;
}
.shang{
    margin-bottom: 0.45rem;
    padding: 0.45rem;
}
.xia{
    display: flex;
    padding: 0;
    justify-content: space-around;
}
.zuo{
    margin-left:-2.5rem;
    
}
.zuo span{
    font-size:0.45rem;
    color:silver;
}
.zuo span em{
    color:red;
    font-size:1.45rem;
}
.lvse{
    color:limegreen;
    font-size:0.25rem;
}

.you {
    display: flex;
    justify-content: space-between;
    padding-top:0.75rem; 
}
.you1{
    font-size:0.25rem;
    color:silver;
}
.you1 span{
    color:#000;
}
.you2{
    font-size:0.25rem;
    color:silver;
}
.you2 span{
    color:#000;
}
.xia{
    padding-left: 0.58rem;
}
.xianshi{
    width:4.06rem;
    border:1px solid green;
    padding-left:0.43rem;
    padding-right: 0.43rem;
    color:green;
    margin-left: 0.62rem;
    margin-top:0.25rem;
}
/* 限时立减独立一行 */
.xs{
    width:100%;
    /* height:2.14rem; */
    color:coral;
    background-color: #fff;
    margin-top: 0.875rem;
    line-height: 2rem;
    /* padding-left:2px;  */
}
.xs span{
    background-color:orangered;
    color:#fff;
    padding: 0.05rem;
    border-radius: 0.15rem;
    margin-left: 0.58rem;
}
/* 日期出发 */
.riqi{
    width:100%;
    background-color:#fff;
    margin-top: 0.875rem;
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.riqizuo{
    width:100%;
    /* height:80px; */
    margin-left: 0.68rem;

}
.riqizuo1 img{
    width:20px;
    height:20px;
    margin-top: 0.35rem;
}
.riqizuo2{
    color:darkgrey;
    font-size: 0.25rem;
    margin-top: 0.25rem;
    padding-bottom:0.65rem;
}
.riqiyou{
    width:13%;
}
.riqiyou img{
    width:90%;
}

/* 提示付款 */
.tishi{
    width:100%;
    display: flex;
    margin-top:0.875rem;
    align-items: center;
    background-color:lightpink;
    padding-top:0.58rem;
    padding-bottom: 0.58rem;
    
}
.tishizuo{
    width:32%;
    display: flex;
    color:chocolate;
    margin-left: 0.58rem;
}
.tishizuo span{
    width:50%;
}
.tishizuo img{
    width:40%;
    /* height:60%; */
}
.tishiyou{
    padding-left:0.28rem;
}
.tishi p{
    width:80%;
}
/* 点评 */
.dianping{
    margin-top: 0.875rem;
    width: 100%;
    background-color:#fff;
}
.dianpingshang img{
    line-height:2rem;
}
.dianpingshangzuo img{
    margin-left: 0.58rem;
}
.dianpingshang{
    width:100%;
    display: flex;
    justify-content: space-between;
    align-items: center;
    line-height: 2rem;
    /* padding-left: 0.58rem; */
    padding-top: 0.42rem;
    /* margin-left: 0.58rem; */
}
.dianpingshangyou img{
    /* margin-right:1rem; */
    width:5%;

}
.dianpingzhong{
    font-size: 0.82rem;
    padding-left: 0.68rem;
}
.dianpingxia{
    width: 100%;
    margin-top: 0.68rem;
    text-align: center;
    padding-bottom: 1rem;
}
.dpbtn{
    border: 0.06rem solid green;
    padding:0.23rem;
    background-color: #fff;
    color:green;
    margin-right: 3rem;
}
/* 店铺 */
.dianpu{
    width:100%;
    display: flex;
    justify-content: space-between;
    background-color:#fff;
    margin-top: 0.875rem;
}
.dianpuzuo{
    margin-left: 0.68rem;
}
.dianpuzuoshang{
    display: flex;
    text-align: left;
    margin-top: 0.58rem;
    margin-bottom: 0.58rem;
}
.dianpuzuoshang img{
    width: 10%;
}
.dianpuzuoxia,.dianpuzuoxiazuo,.dianpuzuoxiayou{
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.dianpuzuoxiazuo,.dianpuzuoxiayou{
    font-size: 0.8rem;
    color: #ccc;
}
.dianpuzuoxiazuo img{
    width: 20%;
}
.dianpuzuoxiayou img{
    width: 25%;
}
.dianpuzuoxia{
    padding-bottom: 1rem;
}
.dianpuyou{
    margin-right: 1.25rem;
    margin-top:0.95rem;
}
/* 底部 */
.dibu{
    width:100%;
    display: flex;
    background-color:dimgray;
    position: fixed;
    bottom: 0;
    box-sizing: border-box;
    overflow:hidden;
}
.dibuzuo{
    width:65%;
    display: flex;
    padding-top:0.78rem;
}
.dibuzuo1{
    width:20px;
    padding-left: 0.68rem;
}
.dibuzuo1,.dibuzuo2{
    display: flex;
    width:100%;
    margin-right: 0.25rem;
    color:#ffffff;
}
.dibuzuo1 img,.dibuzuo2 img{
    width:20%;
    height:40%;
}
.dibuyou{
    width:35%;
    margin-bottom: 0.85rem;
}
.dibuyou input{
    width:100%;
    height:100%;
    background-color: tomato;
    border: 0;
    color:#ffffff;
    padding: 0.85rem;
}
.dibua{
    width:100%;
    height:3.61rem;
}
/* 产品简介 */
.chanpin{
    width:100%;
    background-color:#fff;
}
.chanpinshang{
    text-align: center;
    padding-top: 0.45rem;
}
.chanpinzhong{
    display: flex;
    color:lime;
}
.chanpinxia{
    width:100%;
    margin-top: 0.55rem;
    padding-bottom: 0.45rem;
}
.chanpinxia p{
    padding-bottom: 0.55rem;
    font-size:0.78rem;
}
/* 交通 */
.jiaotong{
    width:100%;
    background-color: #fff;
    margin-top: 0.68rem;
}
.jiaotongshang{
    width:100%;
}
.jiaotongshang h4{
    padding-top:0.55rem;
    text-align: center;
}
.jiaotongshang p{
    font-size:0.25rem;
    color:tomato;
    text-align: center;
    padding-top: 0.35rem;
}
.jiaotongfu{
    width:100%;
    background-color: seagreen;
    display: flex;
    align-items: center;
    border-top-left-radius: 0.3rem;
    border-top-right-radius: 0.3rem;
    margin-top: 0.45rem;
}
.jiaotongzi1{
    border-right: 0.068rem solid #fff;
    padding-left: 0.48rem;
    padding-right: 0.48rem;
    color:#fff;
}
.jiaotongzi2{
    padding-left: 0.48rem;
    color:#fff;
}
.jiaotongfu2{
    width:100%;
    background-color:gainsboro;
    padding-top: 0.45rem;
    border-radius: 0.3rem;
}
.jiaotongfu2zi1{
    display: flex;
}
.jiaotongfu2zi1 :first-child{
    border:1px solid seagreen;
    background-color: seagreen;
    color:#fff;
    margin-left: 0.35rem;
    font-size: 0.45rem;
}
.jiaotongfu2zi1 :nth-child(2){
    color:dimgray;
    margin-left: 0.55rem;
    font-size:0.45rem;
}
.jiaotongfu2zi1 :nth-child(3){
    color:seagreen;
    float:right;
    font-size:0.45rem;
    margin-left: 8rem;
}
.jiaotongfu2zi2{
    display: flex;
    justify-content: space-around;
}
.jiaotongfu2zi2zhong{
    color:dimgray;
    font-size:0.45rem;
}
.jiaotongfu2zi2shang{
    text-align: center;
}
.jiaotongfu2zi2xia{
    text-align: center;
}

/* 预定流程 */
.yuding{
    width:100%;
    background-color:#fff;
    margin-top: 0.68rem;
}
.yuding::before{
    content: "";
    display: block;
    width:100%;
    height:0.68rem;
    background-color: #eeeeee;
}
.yuding1{
    text-align: center;
    padding-top: 0.48rem;
}
.yuding3{
    display: flex;
}
.yuding4{
    font-size: 0.70rem;
    text-align: center;
}
.yuding5{
    display: flex;
}
.yuding6 img{
    width:100%;
}

/* 费用说明 */
.feiyong{
    width:100%;
    background-color:#fff;
}
.feiyong1{
    width:100%;
    padding-top: 0.45rem;
}
.feiyong1 h4{
    text-align: center;
    padding-top: 0.45rem;
}
.feiyong1 p{
    font-size:0.25rem;
    color:tomato;
    text-align: center;
    padding: 0.55rem;
}
.feiyong2{
    display: flex;
    padding:0.58rem;
}
.feiyong3{
    font-size: 0.75rem;
    color:gray;
    padding-left:0.58rem;
}
.feiyong4{
    color:red;
    font-size: 0.75rem;
    font-weight: 800;
    padding-left:0.58rem;
    padding-bottom: 4rem;
}
.feiyong5{
    display: flex;
    padding:0.58rem;
}
.feiyong6{
    font-size: 0.75rem;
    color:gray;
    padding-left: 0.58rem;
    padding-bottom: 2rem;
}
/* 退款政策 */
.tuikuan{
    width:100%;
    background-color:#fff;
    margin-top: 0.68rem;
}
.tuikuan1{
    text-align: center;
    padding-top: 0.30rem;
}
.tuikuan2{
    text-align: center;
    font-size: 0.75rem;
    color:tomato;
    padding: 0.58rem;
}
.tuikuan3{
    font-size: 0.80rem;
    color:gray;
    padding:0.58rem;
}
/* 推荐行程 */
.tuijian{
    width:100%;
    padding-top: 0.35rem;
    background-color: #fff;
    margin-top: 0.58rem;
}
.tuijian1{
    text-align: center;
}
.tuijian2{
    display: flex;
    padding:0.58rem;
    padding-bottom: 1rem;
}
.tuijian3{
    padding:1rem;
}
.tuijian3 img{
    width:100%;
}
/* 其他说明 */
.shuoming{
    margin-top: 0.68rem;
    width:100%;
    background-color:#fff;
}
.shuoming h4{
    text-align: center;
    padding-top: 0.7rem;
}
.shuoming p{
    color:gray;
    font-size: 0.82rem;
    padding-left: 0.58rem;
    padding-top: 0.2rem;
    padding-bottom: 1.3rem;
}

/* 猜你喜欢 */
.xihuan{
    width:100%;
    background-color: #fff;
    margin-top: 3rem;
}
.xihuan h4{
    text-align: center;
    padding-top: 0.95rem;
    padding-bottom: 0.55rem;
}
.xihuan1{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
.xihuan2{
    width: 45%;
    padding:0.2rem 0.58rem;
    /* display: flex; */
}
.xihuan2 img{
    width:100%;
}
.xihuan2 h6{
    font-size: 0.75rem;

}
.xihuan2 p{
    color:tomato;
    font-size: 0.75rem;
    padding-top: 0.2rem;
}
.xihuan2 p span{
    color:gray;
}
.xihuan3{
    text-align: center;
    color:rgb(39, 128, 39);
    font-size: 0.8rem;
    padding-top: 0.8rem;
    padding-bottom: 4rem;
}
/* 组件的样式 */
.mint-tab-item-label{
  border:0.05rem solid grey; 
  font-size:1rem;
  padding:0.25rem;
  height:1.3rem;
  line-height: 1.3rem;
}
.mint-navbar .mint-tab-item.is-selected{
  margin:0;
  border: none;
  color:#00a600;
}
</style>
