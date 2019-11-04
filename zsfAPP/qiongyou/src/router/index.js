import Vue from 'vue'
import Router from 'vue-router'
import login from  '@/components/login'
import loginYz from  '@/components/loginYz'
import loginpwd from  '@/components/loginpwd'
import tabbar from  '@/components/tabbar'
import order from  '@/components/order'
import biuban from  '@/components/biuban'
import details from  '@/components/details'
import mudidi from  '@/components/mudidi'
import me_sz_01 from  '@/components/me_sz_01'
import me_sz_01_u from  '@/components/me_sz_01_u'
import me_sz_02 from  '@/components/me_sz_02'
import Trunk from  '@/components/Trunk'
import shop from '@/components/shop'
import ShopDetails from  '@/components/shop-details'
import shop_btn_all from '@/components/shop_btn_all'
import to_comments from '@/components/to_comments'

// import me_sz_03 from  '@/components/me_sz_03'
// import me_sz_04 from  '@/components/me_sz_04'
// import me_sz_05 from  '@/components/me_sz_05'
// import me_sz_06 from  '@/components/me_sz_06'
// import me_sz_07 from  '@/components/me_sz_07'
// import me_sz_08 from  '@/components/me_sz_08'
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/to_comments',name:'to_comments',component:to_comments},
    {path:'/shop_btn_all',name:'shop_btn_all',component:shop_btn_all},
    {path: '/',name:'tabbar',component:tabbar},
    {path: '/tabbar',name:'tabbar',component:tabbar},
    {path: '/login',name:'login',component: login},
    {path: '/loginYz',name:'loginYz',component:loginYz},
    {path: '/loginpwd',name:'loginpwd',component:loginpwd},
    {path: '/tabbar',name:'tabbar',component:tabbar},
    {path: '/me_sz_01',name:'me_sz_01',component:me_sz_01},
    {path: '/me_sz_01_u',name:'me_sz_01_u',component:me_sz_01_u},
    {path: '/me_sz_02',name:'me_sz_02',component:me_sz_02},
    {path: '/order',name:'order',component:order},
    {path: '/biuban',name:'biuban',component:biuban},
    {path: '/details',name:'details',component:details},
    {path: '/mudidi',name:'mudidi',component:mudidi},
    {path: '/Trunk',name:'Trunk',component:Trunk},
    {path: '/ShopDetails',name:'ShopDetails',component:ShopDetails},
    {path: '/shop',name:'shop',component:shop}
//     {path: '/me_sz_03',name:'me_sz_03',component:me_sz_03},
//     {path: '/me_sz_04',name:'me_sz_04',component:me_sz_04},
//     {path: '/me_sz_05',name:'me_sz_05',component:me_sz_05},
//     {path: '/me_sz_06',name:'me_sz_06',component:me_sz_06},
//     {path: '/me_sz_07',name:'me_sz_07',component:me_sz_07},
//     {path: '/me_sz_08',name:'me_sz_08',component:me_sz_08}
  ]
})
