<template>
  <div class="detail3">
    <mt-header title="旅游攻略" fixed>
      <router-link to="/strategy" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <router-link to="" slot="right">
        <mt-button icon="more"></mt-button>
      </router-link>
    </mt-header>
    <div class="d1"></div>
    <h2>明日世界</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.g1.img1" alt="" /></div>
      <div>
        <p>{{this.g1.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.g1.details}}</p>
            
            <p>{{this.g1.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.g1.show_time}}</p>
            <p>{{this.g1.people}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>米奇大街</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.g2.img1" alt="" /></div>
      <div>
        <p>{{this.g2.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.g2.details}}</p>
            
            <p>{{this.g2.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.g2.show_time}}</p>
            <p>{{this.g2.people}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>梦幻世界</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.g3.img1" alt="" /></div>
      <div>
        <p>{{this.g3.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.g3.details}}</p>
            
            <p>{{this.g3.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.g3.show_time}}</p>
            <p>{{this.g3.people}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>明日世界</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.g4.img1" alt="" /></div>
      <div>
        <p>{{this.g4.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.g4.details}}</p>
            
            <p>{{this.g4.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.g4.show_time}}</p>
            <p>{{this.g4.people}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    <h2>皮克斯玩具总动员</h2>
    <hr class="hrr">
    <!-- 项目介绍 -->
    <div class="details">
      <div><img :src="this.g5.img1" alt="" /></div>
      <div>
        <p>{{this.g5.title}}</p>
        <div class="jian">
          <div>
            <p>{{this.g5.details}}</p>
            
            <p>{{this.g5.side}}</p>
          </div>
          <div>
            <h3>开放时间</h3>
            <p>{{this.g5.show_time}}</p>
            <p>{{this.g5.people}}</p>
          </div>
        </div>
      </div>
    </div>
    <hr class="hrr">
    
  </div>
</template>
<style>
.detail3 .d1{
  margin-top: 45px;
}
.detail3 .mint-header{
  height: 40px;
  font-size: 14px;
}
.detail3 .mintui{
  font-size: 14px;
}
.detail3 h2{
  margin-top: 15px;
  font-weight: bold;
}
.detail3 .hrr {
  width: 373px;
  height: 1px;
  background: rgb(14, 134, 226);
  margin-left: 0;
  margin-top: 15px;
  margin-bottom: 15px;
}

.detail3 .details {
  width: 370px;
  display: flex;
  justify-content: center;
  align-items:center;
}
.detail3 .jian{
  display: flex;
  justify-content: start;
  align-items: flex-start;
  margin-left: 0;
}
.detail3 .details > div:nth-child(2) > p {
  margin-bottom: 5px;
  font-size:14px;
  font-weight: bold;
}
.detail3 .jian>div:nth-child(1) {
   width: 140px;
  font-size: 12px;
  font-weight: bold;
  margin-right: 8px;
}
.detail3 .jian>div:nth-child(1)>p{
    margin-bottom: 3px;
}
.detail3 .jian>div:nth-child(2) {
  width: 116px;
  font-size: 12px;
  font-weight: bold;
}
.detail3 .jian>div:nth-child(2)>p{
    margin-bottom: 0px;
}
.detail3 .details div:nth-child(1) > img {
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
      g1:{},
      g2:{},
      g3:{},
      g4:{},
      g5:{}
    }
  },
  mounted(){
    this.axios.get("/product/details3").then(result=>{
     [this.g1,this.g2,this.g3,this.g4,this.g5] = result.data;
     console.log(this.g1.img1);
    })
  },
}
</script>>