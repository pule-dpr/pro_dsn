<template>
  <div class="detail1">
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
      <div><img :src="this.y1.img1" alt="" /></div>
      <div>
        <p>{{this.y1.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.y1.details}}</p>
            <p>{{this.y1.people}}</p>
            <p>{{this.y1.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.y1.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>皮克斯玩具总动员</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.y2.img1" alt="" /></div>
      <div>
        <p>{{this.y2.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.y2.details}}</p>
            <p>{{this.y2.people}}</p>
            <p>{{this.y2.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.y2.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>梦幻世界</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.y3.img1" alt="" /></div>
      <div>
        <p>{{this.y1.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.y3.details}}</p>
            <p>{{this.y3.people}}</p>
            <p>{{this.y3.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.y3.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>米奇大街</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.y4.img1" alt="" /></div>
      <div>
        <p>{{this.y4.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.y4.details}}</p>
            <p>{{this.y4.people}}</p>
            <p>{{this.y4.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.y4.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>米奇大街</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.y5.img1" alt="" /></div>
      <div>
        <p>{{this.y5.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.y5.details}}</p>
            <p>{{this.y5.people}}</p>
            <p>{{this.y5.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.y5.show_time}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
  </div>
</template>
<style>
.detail1 .d1{
  margin-top: 45px;
}
.detail1 .mint-header{
  height: 40px;
  font-size: 14px;
}
.detail1 .mintui{
  font-size: 14px;
}
.detail1 h2{
  margin-top: 15px;
  font-weight: bold;
}
.detail1 .hrr {
  width: 373px;
  height: 1px;
  background: rgb(14, 134, 226);
  margin-left: 0;
  margin-top: 15px;
  margin-bottom: 15px;
}

.detail1 .details {
  width: 370px;
  display: flex;
  justify-content: center;
  align-items:center;
}
.detail1 .jian{
  display: flex;
  justify-content: start;
  align-items: flex-start;
  margin-left: 0;
}
.detail1 .details > div:nth-child(2) > p {
  margin-bottom: 5px;
  font-size: 14px;
  font-weight: bold;
}
.detail1 .jian>div:nth-child(1) {
  width: 150px;
  font-size: 12px;
  font-weight: bold;
}
.detail1 .jian>div:nth-child(1)>p{
    margin-bottom: 3px;
}
.detail1 .jian>div:nth-child(2) {
  width: 116px;
  font-size: 12px;
  font-weight: bold;
}
.detail1 .jian>div:nth-child(2)>h3{
    margin-bottom: 10px;
}
.detail1 .details div:nth-child(1) > img {
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
      y1:{},
      y2:{},
      y3:{},
      y4:{},
      y5:{},
      y6:{}
    }
  },
  mounted(){
    this.axios.get("/product/details1").then(result=>{
     [this.y1,this.y2,this.y3,this.y4,this.y5] = result.data;
     console.log(this.y1.img1);
    })
  },
}
</script>>