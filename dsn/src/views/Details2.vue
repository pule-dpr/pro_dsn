<template>
  <div class="detail2">
    <mt-header title="旅游攻略" fixed>
      <router-link to="/strategy" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <router-link to="" slot="right">
        <mt-button icon="more"></mt-button>
      </router-link>
    </mt-header>
    <div class="d1"></div>
    <h2>宝藏湾</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.m1.img1" alt="" /></div>
      <div>
        <p>{{this.m1.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.m1.details}}</p>
            <p>{{this.m1.people}}</p>
            <p>{{this.m1.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.m1.show_time}}</p>
            <p>{{this.m1.customer}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr"> 
    <h2>探险岛</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.m2.img1" alt="" /></div>
      <div>
        <p>{{this.m2.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.m2.details}}</p>
            <p>{{this.m2.people}}</p>
            <p>{{this.m2.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.m2.show_time}}</p>
            <p>{{this.m2.customer}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr"> 
    <h2>梦幻世界</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.m3.img1" alt="" /></div>
      <div>
        <p>{{this.m3.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.m3.details}}</p>
            <p>{{this.m3.people}}</p>
            <p>{{this.m3.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.m3.show_time}}</p>
            <p>{{this.m3.customer}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr"> 
    <h2>梦幻世界</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.m4.img1" alt="" /></div>
      <div>
        <p>{{this.m4.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.m4.details}}</p>
            <p>{{this.m4.people}}</p>
            <p>{{this.m4.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.m4.show_time}}</p>
            <p>{{this.m4.customer}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr"> 
    <h2>梦幻世界</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.m5.img1" alt="" /></div>
      <div>
        <p>{{this.m5.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.m5.details}}</p>
            <p>{{this.m5.people}}</p>
            <p>{{this.m5.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.m5.show_time}}</p>
            <p>{{this.m5.customer}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr"> 
   
   
    
  </div>
</template>
<style>
.detail2 .d1{
  margin-top: 45px;
}
.detail2 .mint-header{
  height: 40px;
  font-size: 14px;
}
.detail2 .mintui{
  font-size: 14px;
}
.detail2 h2{
  margin-top: 15px;
  font-weight: bold;
}
.detail2 .hrr {
  width: 373px;
  height: 1px;
  background: rgb(14, 134, 226);
  margin-left: 0;
  margin-top: 15px;
  margin-bottom: 15px;
}

.detail2 .details {
  width: 370px;
  display: flex;
  justify-content: center;
  align-items:center;
}
.detail2 .jian{
  display: flex;
  justify-content: start;
  align-items: flex-start;
  margin-left: 0;
}
.detail2 .details > div:nth-child(2) > p {
  margin-bottom: 5px;
  font-size: 14px;
  font-weight: bold;
}
.detail2 .jian>div:nth-child(1) {
 width: 150px;
  font-size: 12px;
  font-weight: bold;
}
.detail2 .jian>div:nth-child(1)>p{
    margin-bottom: 3px;
}
.detail2 .jian>div:nth-child(2) {
  width: 116px;
  font-size: 12px;
  font-weight: bold;
}
.detail2 .jian>div:nth-child(2)>p{
    margin-bottom:6px;
}
.detail2 .details div:nth-child(1) > img {
   width: 100px;
  height: 65px;
  border-radius: 5px;
  margin-left: 2px;
  margin-right: 2px;
}

</style>
<script>
export default {
  data(){
    return{
      m1:{},
      m2:{},
      m3:{},
      m4:{},
      m5:{}
    }
  },
  mounted(){
    this.axios.get("/product/details2").then(result=>{
     [this.m1,this.m2,this.m3,this.m4,this.m5] = result.data;
     console.log(this.m1.title);
    })
  },
}
</script>>