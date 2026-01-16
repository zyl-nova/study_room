import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)

// 组件引入（你原来的保持不变）
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import register from '@/views/register'
import center from '@/views/center'
import appointment_quxiaoyuyue from '@/views/modules/appointment/quxiaoyuyue/list'
import appointment_yuyuexinxi from '@/views/modules/appointment/yuyuexinxi/list'
import xuesheng_list from '@/views/modules/xuesheng/list'
import xuesheng_add from '@/views/modules/xuesheng/add-or-update'
import zixishi_list from '@/views/modules/zixishi/list'
import zixishi_add from '@/views/modules/zixishi/add-or-update'
<<<<<<< HEAD
import qiandaoxinxi from '@/views/modules/qiandaoxinxi/list'
// 删掉重复的旧引入：import blacklist from '@/views/modules/blacklist/list'
import message_shensu from '@/views/modules/message/shensu/list'
import complaint from '@/views/modules/complaint/index'
import ranking from '@/views/modules/ranking/ranking'
import chart from '@/views/modules/chart/chart'
import config from '@/views/modules/config/list'
import news from '@/views/modules/news/list'
// 只保留你新建的blacklist.vue的引入（统一命名为blacklist，避免大小写冲突）
import blacklist from '@/views/blacklist.vue';
// 修正：导入weiguiRecord.vue，路径和blacklist一致（views根目录）
import weiguiRecord from '@/views/weiguiRecord.vue';
import shensu from '@/views/modules/shensu/shensu'
import tubiaozhanshi from '@/views/modules/tubiaozhanshi/tubiaozhanshi'

//2.配置路由   注意：名字
const routes = [{
  path: '/index',
  name: '系统首页',
  component: Index,
  children: [{
    // 这里不设置值，是把main作为默认页面
    path: '/',
    name: '系统首页',
    component: Home,
    meta: { icon: '', title: 'center' }
  }, {
    path: '/updatePassword',
    name: '修改密码',
    component: UpdatePassword,
    meta: { icon: '', title: 'updatePassword' }
  }, {
    path: '/center',
    name: '个人信息',
    component: center,
    meta: { icon: '', title: 'center' }
  }
    , {
    path: '/xuesheng_list',
    name: '学生信息编辑及查询',
    component: xuesheng_list
  }
    , {
    path: '/xuesheng_add',
    name: '新增学生信息',
    component: xuesheng_add
  }
  , {
    path: '/yuyuexinxi',
    name: '预约信息',
    component: appointment_yuyuexinxi
  }
  , {
    path: '/quxiaoyuyue',
    name: '取消预约',
    component: appointment_quxiaoyuyue
  }
    , {
    path: '/zixishi_list',
    name: '自习室信息',
    component: zixishi_list
  }
    , {
    path: '/zixishi_add',
    name: '新增自习室',
    component: zixishi_add
  }
    , {
    path: '/blacklist',
    name: '黑名单管理',
    component: blacklist, // 现在指向你新建的blacklist.vue文件
    meta: { icon: '', title: 'blacklist' } // 补充meta，确保菜单匹配
  }
  , {
    path: '/WeiguiRecord', // 新增违规记录管理路由
    name: '违规记录管理',
    component: weiguiRecord, // 修正：直接使用导入的组件，路径和blacklist一致
    meta: { icon: 'cuIcon-list', title: 'WeiguiRecord' } // 补充icon，和menu匹配
  }
    , {
    path: '/shensu',
    name: '申诉处理',
    component: shensu
  }
    , {
    path: '/complaint',
    name: '投诉处理',
    component: complaint
  }
    , {
    path: '/ranking',
    name: '自习时长排行榜',
    component: ranking
  }
    , {
    path: '/tubiaozhanshi',
    name: '图表展示',
    component: tubiaozhanshi
  }
    , {
    path: '/config',
    name: '轮播图管理',
    component: config
  }
    , {
    path: '/news',
    name: '公告资讯',
    component: news
  }
  ]
},
{
  path: '/login',
  name: 'login',
  component: Login,
  meta: { icon: '', title: 'login' }
},
{
  path: '/register',
  name: 'register',
  component: register,
  meta: { icon: '', title: 'register' }
},
{
  path: '/',
  name: '系统首页',
  redirect: '/index'
}, /*默认跳转路由*/
{
  path: '*',
  component: NotFound
}
=======
import config from '@/views/modules/config/list'
import news from '@/views/modules/news/list'
import complaint from '@/views/modules/complaint/index'
import ranking from '@/views/modules/ranking/ranking'
import shensu from '@/views/modules/shensu/shensu'
import tubiaozhanshi from '@/views/modules/tubiaozhanshi/tubiaozhanshi'
import blacklist from '@/views/blacklist.vue'
import weiguiRecord from '@/views/weiguiRecord.vue'

// 1) routes 先定义
const routes = [
  {
    path: '/index',
    name: '系统首页',
    component: Index,
    children: [
      { path: '/', component: Home },
      { path: '/updatePassword', component: UpdatePassword },
      { path: '/center', component: center },
      { path: '/xuesheng_list', component: xuesheng_list },
      { path: '/xuesheng_add', component: xuesheng_add },
      { path: '/yuyuexinxi', component: appointment_yuyuexinxi },
      { path: '/quxiaoyuyue', component: appointment_quxiaoyuyue },
      { path: '/zixishi_list', component: zixishi_list },
      { path: '/zixishi_add', component: zixishi_add },
      { path: '/blacklist', component: blacklist },
      { path: '/WeiguiRecord', component: weiguiRecord },
      { path: '/shensu', component: shensu },
      { path: '/complaint', component: complaint },
      { path: '/ranking', component: ranking },
      { path: '/tubiaozhanshi', component: tubiaozhanshi },
      { path: '/config', component: config },
      { path: '/news', component: news },
    ],
  },
  { path: '/login', component: Login },
  { path: '/register', component: register },
  { path: '/', redirect: '/index' },
  { path: '*', component: NotFound },
>>>>>>> main
]

const router = new VueRouter({
  mode: 'hash',
<<<<<<< HEAD
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})
const originalPush = VueRouter.prototype.push
//修改原型对象中的push方法
VueRouter.prototype.push = function push(location) {
  return originalPush.call(this, location).catch(err => err)
}
export default router;
=======
  routes
});

import storage from "@/utils/storage";

router.beforeEach((to, from, next) => {
  const q = to.query || {};
  const token = q.token;
  const role = q.role;
  const sessionTable = q.sessionTable;
  const adminName = q.adminName;

  // 1) 如果 URL 带了 token（从学生端跳过来）
  if (token) {
    // 用同一套 storage 写，保证 http.js 能读到
    storage.set("Token", token);
    storage.set("token", token); // 保险：有些代码读小写

    // 这些决定“显示哪个角色菜单”
    storage.set("role", role || "管理员");
    storage.set("sessionTable", sessionTable || "users");
    if (adminName) storage.set("adminName", adminName);

    // 清掉地址栏参数，并强制进首页
    return next({ path: "/index", query: {}, replace: true });
  }

  // 2) 已经有 token 还访问 /login，就别让他看登录页了，直接去首页
  const hasToken = storage.get("Token") || storage.get("token");
  if (hasToken && to.path === "/login") {
    return next("/index");
  }

  next();
});


export default router;

>>>>>>> main
