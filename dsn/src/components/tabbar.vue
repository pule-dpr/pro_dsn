<template>
      <mt-tabbar v-model="tabbar" fixed>
        <mt-tab-item id="index" @click.native="nav('/index')">
          首页
          <img src="/img/icon/isindex.png" slot="icon" v-if="tabbar=='index'">
          <img src="/img/icon/index.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="position"  @click.native="nav('/position')">
          定位
           <img src="/img/icon/isposition.png" slot="icon" v-if="tabbar=='position'">
          <img src="/img/icon/position.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="news" @click.native="nav('/issue')" >
          发布 
          <img src="/img/icon/news.png" slot="icon" >
        </mt-tab-item>
        <mt-tab-item id="condition"  @click.native="nav('/condition')">
          附近
           <img src="/img/icon/isnear.png" slot="icon" v-if="tabbar=='condition'">
          <img src="/img/icon/near.png" slot="icon" v-else>
        </mt-tab-item>
        <mt-tab-item id="self"  @click.native="nav('/self')">
          我的
           <img src="/img/icon/isself.png" slot="icon" v-if="tabbar=='self'">
          <img src="/img/icon/self.png" slot="icon" v-else>
        </mt-tab-item>
      </mt-tabbar>
</template>
<style>

</style>
<script>
export default {
    data(){
        return{
             tabbar:this.$route.path.slice(1),
        }
       
    },
    methods:{
        nav(url){
             this.$router.push(url);
        },
    }
}
</script>