<template>
    <div class="index"><!---->
      <div class="header">
        <!--logo-->
        <div class="logo">
          <img src="/img/logo/logo.png" alt="">
        </div>
        <!--input-->
        <div class="search">
          <mt-field type="text" placeholder="问问米老鼠吧..."></mt-field>
        </div>
        <!--登录注册-->
      </div>
      <!--轮播组件-->
      <carousel></carousel>
      <!--按钮导航-->
      <div class="nav">
        
      </div>
      <!--底部导航-->
      <mt-tabbar v-model="tabbar" fixed>
        <mt-tab-item id="index">
          首页
          <img src="/img/icon/isindex.png" slot="icon" v-if="tabbar=='index'">
          <img src="/img/icon/index.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="position">
          定位
           <img src="/img/icon/isposition.png" slot="icon" v-if="tabbar=='position'">
          <img src="/img/icon/position.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="news">
          发布 
          <img src="/img/icon/news.png" slot="icon" >
        </mt-tab-item>
        <mt-tab-item id="near">
          附近
           <img src="/img/icon/isnear.png" slot="icon" v-if="tabbar=='near'">
          <img src="/img/icon/near.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="self">
          我的
           <img src="/img/icon/isself.png" slot="icon" v-if="tabbar=='self'">
          <img src="/img/icon/self.png" slot="icon" v-else>
        </mt-tab-item>
      </mt-tabbar>
    </div>
</template>
<style>
.index>.header{
  height: 50px;
  display: flex;
  margin-top: 8px;
}
.index>.header>.logo{
  width: 80px;
  margin-left: 8px;
}
.index>.header>.logo>img{
  width: 100%;
}
</style>
<script>
import carousel from '../components/Carousel'
export default {
  data(){
    return{
      tabbar:"index"
    }
  },
  components:{
    carousel
  },
}
</script>
