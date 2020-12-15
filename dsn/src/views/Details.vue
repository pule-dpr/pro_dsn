<template>
  <div class="detail">
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
      <div><img :src="this.x1.img1" alt="" /></div>
      <div>
        <p>{{this.x1.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.x1.details}}</p>
            <p>{{this.x1.people}}</p>
            <p>{{this.x1.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.x1.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>宝藏湾</h2>
    <hr class="hrr">  
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.x2.img1" alt="" /></div>
      <div>
        <p>{{this.x2.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.x2.details}}</p>
            <p>{{this.x2.people}}</p>
            <p>{{this.x2.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.x2.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>宝藏湾</h2>
    <hr class="hrr">  
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.x3.img1" alt="" /></div>
      <div>
        <p>{{this.x3.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.x3.details}}</p>
            <p>{{this.x3.people}}</p>
            <p>{{this.x3.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.x3.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>宝藏湾</h2>
    <hr class="hrr">  
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.x4.img1" alt="" /></div>
      <div>
        <p>{{this.x4.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.x4.details}}</p>
            <p>{{this.x4.people}}</p>
            <p>{{this.x4.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.x4.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>皮克斯玩具总动员</h2>
    <hr class="hrr">  
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.x5.img1" alt="" /></div>
      <div>
        <p>{{this.x5.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.x5.details}}</p>
            <p>{{this.x5.people}}</p>
            <p>{{this.x5.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.x5 .show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>皮克斯玩具总动员</h2>
    <hr class="hrr">  
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.x6.img1" alt="" /></div>
      <div>
        <p>{{this.x6.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.x6.details}}</p>
            <p>{{this.x6.people}}</p>
            <p>{{this.x6.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.x6.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
  </div>
</template>
<style>
.detail .d1{
  margin-top: 45px;
}
.detail .mint-header{
    height: 40px;
    font-size: 14px;
}
.detail .mintui{
    font-size: 14px;
}
.detail h2{
  margin-top: 15px;
  font-weight: bold;
}
.detail .hrr {
  width: 373px;
  height: 1px;
  background: rgb(14, 134, 226);
  margin-left: 0;
  margin-top: 15px;
  margin-bottom: 15px;
}
.detail .details {
  width: 370px;
  display: flex;
  justify-content: center;
  align-items:center;
}
.detail .jian{
  display: flex;
  justify-content: start;
  align-items: flex-start;
  margin-left: 0;
}
.detail .details > div:nth-child(2) > p {
  margin-bottom: 5px;
  font-size: 14px;
  font-weight: bold;
}
.detail .jian>div:nth-child(1) {
  width: 150px;
  font-size: 12px;
  font-weight: bold;
}
.detail .jian>div:nth-child(1)>p{
    margin-bottom: 3px;
}
.detail .jian>div:nth-child(2) {
  width: 116px;
  font-size: 12px;
  font-weight: bold;
}
.detail .jian>div:nth-child(2)>h3{
    margin-bottom: 10px;
}
.detail .details div:nth-child(1)> img {
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
      x1:{},
      x2:{},
      x3:{},
      x4:{},
      x5:{},
      x6:{}
    }
  },
  mounted(){
    this.axios.get("/product/details").then(result=>{
     [this.x1,this.x2,this.x3,this.x4,this.x5,this.x6] = result.data;
     console.log(this.x1.img1);
    })
  },
}
</script>>