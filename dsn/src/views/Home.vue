<template>
    <div class="index"><!---->
      <div class="header">
        <!--logo-->
        <div class="logo">
          <img src="/img/logo/logo.png" alt="">
        </div>
        <!--input-->
        <div class="search">
          <div class="icon1">
            <img src="/img/icon/search.png" alt="">
          </div>
          <input type="text" placeholder="来问问米老鼠吧...">
        </div>
        <!--登录注册-->
        <div class="personal" v-if="islogin">
            <div class="tx">
              <img src="/img/tx/tx2.jpg" alt="">
            </div>
        </div>
        <div class="btn" v-else>
          <router-link to="">登录</router-link>
          <router-link to="">注册</router-link>
        </div>
      </div>
      <!--轮播组件-->
      <carousel></carousel>
      <!--按钮导航-->
      <div class="nav">
          <div class="nav-item" @click="nav('/tickets')">
            <div class="icon">
              <img src="/img/icon/mp.png" alt="">
            </div>
            <p>门票</p>
          </div>
           <div class="nav-item" @click="nav('/show')">
            <div class="icon">
              <img src="/img/icon/yc.png" alt="">
            </div>
            <p>演出</p>
          </div>
           <div class="nav-item" @click="nav('/gonlue')">
            <div class="icon">
              <img src="/img/icon/gl.png" alt="">
            </div>
            <p>攻略</p>
          </div>
           <div class="nav-item" @click="nav('/xuzhi')">
            <div class="icon">
              <img src="/img/icon/xz.png" alt="">
            </div>
            <p>须知</p>
          </div>
      </div>
      <!--顶部面板导航-->
      <mt-navbar v-model="active">
          <mt-tab-item id="1">热门推荐</mt-tab-item>
          <mt-tab-item id="2">今日演出</mt-tab-item>
      </mt-navbar>
      <mt-tab-container v-model="active">
        <mt-tab-container-item id="1">
           <!--热门推荐-->
              <div class="recommend">
                <div class="rem-item" v-for="(p,i) of project" :key="i" @click="detail(i+1)">
                    <div class="image">
                      <img :src="p.img1" alt="">
                    </div>
                    <div class="title tx">{{p.title}}</div>
                    <div class="content tx">{{p.session}}</div>
                    <div class="tj tx">
                      <p>推荐指数：</p> 
                      <ul>
                        <li v-for="(n,i) of p.redu" :key="i">
                          <img src="/img/icon/zs.png" alt="">
                        </li>
                      </ul>
                    </div>
                </div>
                 <div class="rem-item" v-for="(p,i) of project" :key="i+5">
                    <div class="image">
                      <img :src="p.img1" alt="">
                    </div>
                    <div class="title tx">{{p.title}}</div>
                    <div class="content tx">{{p.session}}</div>
                    <div class="tj tx">
                      <p>推荐指数：</p> 
                      <ul>
                        <li v-for="(n,i) of p.redu" :key="i">
                          <img src="/img/icon/zs.png" alt="">
                        </li>
                      </ul>
                    </div>
                </div>
                <p>已经到底了哦！</p>
              </div>
        </mt-tab-container-item>
        <mt-tab-container-item id="2">
            <div class="taday">
                <div class="tad-item">
                    <div class="image">
                      <img src="/img/rem/mq.jpg" alt="">
                    </div>
                    <div class="title tx">米奇大街的小秘密</div>
                    <div class="content tx">2020.1212/12.13</div>
                    <div class="tj tx">票价：￥100起<span></span></div>
                </div>
              </div>
        </mt-tab-container-item>
      </mt-tab-container>
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
        <mt-tab-item id="news" @click.native="nav('/issue')" >
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
.index .mint-tab-container{
  background-color: rgb(247, 247, 247)
}
.index .recommend,.index .taday{
  margin: 25px 15px 60px 15px;
  display: flex;
  flex-flow: row wrap;
  justify-content: space-between;
  background-color: transparent;
}
.index .recommend .rem-item,.index .taday .tad-item{
  width: 160px;
  height: 180px;
  background-color:#fff;
  margin-bottom: 20px;
  border-radius: 10px;
  font-size: 12px;
  font-weight: bolder;
}
.index .recommend .rem-item>.image,.index .taday .tad-item>.image{
  width: 160px;
  height: 115px;
  overflow: hidden;
   border-radius: 10px;
}
.index .recommend .rem-item>.image>img,.index .taday .tad-item>.image>img{
  width: 100%;
}
.index .recommend .rem-item>.tx,.index .taday .tad-item>.tx{
  margin-top: 10px;
  margin-left: 5px;
}
.index .recommend .rem-item>.content,.index .taday .tad-item>.content{
  margin-top: 5px;
  font-weight: normal;
}
.index .recommend .rem-item>.tj,.index .taday .tad-item>.tj{
   margin-top: 5px;
  color: #ff5e00;
  display: flex;
}
.index .recommend .rem-item>.tj>ul{
  list-style: none;
  display: flex;
  position: relative;
  top: -2px;
}
.index .recommend .rem-item>.tj>ul>li{
  width: 12px;
  height: 12px;
}
.index .recommend .rem-item>.tj>ul>li>img{
  width: 100%;
}
.index .recommend>p{
  text-align: center;
  font-size:12px ;
  margin: 0 auto;
  margin-top: 25px;
}
.index>.header{
  height: 50px;
  padding: 8px;
  display: flex;
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
.index>.header>.personal{
  margin: 10px 0 0 30px;
}
.index>.header>.personal>.tx{
  width: 40px;
  height: 40px;
  border-radius: 50%;
  overflow: hidden;
}
.index>.header>.personal>.tx>img{
  width: 100%;
}
.index .nav{
  margin-top: 25px;
  display: flex;
  justify-content: space-around;
}
.index .nav .nav-item{
  width:80px;
  height: 80px;
}
.index .nav .nav-item>.icon{
  width: 45px;
  height: 45px;
  overflow: hidden;
  margin: 0 auto;
}
.index .nav .nav-item>.icon>img{
  width: 100%;
}
.index .nav .nav-item>p{
  font-size: 12px;
  font-weight: bolder;
  line-height: 20px;
  text-align: center;
}
</style>
<script>
import carousel from '../components/Carousel'
import {getrm} from '../../public/js/apis/indexrm.js'
export default {
  data(){
    return{
      active:"1",
      tabbar:"index",
      islogin:false,
      project:[]
    }
  },
  methods:{
    nav(url){
      this.$router.push(url);
    },
    detail(index){
      this.$router.push(`/detail/${index}`);
    },
    fun(){
      console.log(666);
    }
  },
  mounted(){
    getrm().then(result=>{
      this.project=result;
    });
  },
  components:{
    carousel
  },
}
</script>
