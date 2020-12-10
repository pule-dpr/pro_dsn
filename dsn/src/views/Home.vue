<template>
    <div class="index"><!---->
      <div class="header">
        <!--logo-->
        <div class="logo">
          <img src="../assets/img/logo/logo.png" alt="">
        </div>
        <!--input-->
        <div class="search">
          <div class="icon1">
            <img src="../assets/img/icon/search.png" alt="">
          </div>
          <input type="text" placeholder="来问问米老鼠吧...">
        </div>
        <!--登录注册-->
        <div class="btn">
          <router-link to="">登录</router-link>
          <router-link to="">注册</router-link>
        </div>
      </div>
      <!--轮播组件-->
      <carousel></carousel>
      <!--按钮导航-->
      <div class="nav">
          <div>
            <div class="icon">
              <img src="" alt="">
            </div>
            <div>门票</div>
          </div>
      </div>
      <!--底部导航-->
      <mt-tabbar v-model="tabbar" fixed>
        <mt-tab-item id="index">
          首页
          <img src="../assets/img/icon/isindex.png" slot="icon" v-if="tabbar=='index'">
          <img src="../assets/img/icon/index.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="position">
          定位
           <img src="../assets/img/icon/isposition.png" slot="icon" v-if="tabbar=='position'">
          <img src="../assets/img/icon/position.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="news">
          发布 
          <img src="../assets/img/icon/news.png" slot="icon" >
        </mt-tab-item>
        <mt-tab-item id="near">
          附近
           <img src="../assets/img/icon/isnear.png" slot="icon" v-if="tabbar=='near'">
          <img src="../assets/img/icon/near.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="self">
          我的
           <img src="../assets/img/icon/isself.png" slot="icon" v-if="tabbar=='self'">
          <img src="../assets/img/icon/self.png" slot="icon" v-else>
        </mt-tab-item>
      </mt-tabbar>
    </div>
</template>
<style>
.index>.header{
  height: 50px;
  display: flex;
  padding: 8px;
}
.index>.header>.logo{
  width: 80px;
}
.index>.header>.logo>img{
  width: 100%;
}
.index>.header>.search,.index>.header>.btn{
  margin-top: 15px;
  margin-left: 15px;
  position: relative;
} 
.index>.header>.search>.icon1{
  width:25px;
  height:25px;
  position: absolute;
  left: 10px;
  top: 3px;
}
.index>.header>.search>.icon1>img,.index>.header>.search>.icon2>img{
  width: 100%;
}
.index>.header>.search input{
 width: 120px;
 height: 10px;
 border: 1px solid rgb(168, 167, 167);
 padding: 12px 6px 8px 45px;
 border-radius: 15px;
 font-size: 10px;
}
.index>.header>.btn>a{
  margin-left: 8px;
  font-size: 12px;
  color: #000;
  line-height: 35px;
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
