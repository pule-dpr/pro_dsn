<template>
  <div class="conditions">
    <mt-header title="上海迪士尼乐园" fixed>
      <router-link to="/index" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <router-link to="" slot="right">
        <mt-button icon="more"></mt-button>
      </router-link>
    </mt-header>
    <div class="d5"></div>
    <div class="condition">
      <div>
        <div><img :src="this.cond1.img" alt="" /></div>
        <div>
          <p>{{this.cond1.user_id}}</p>
          <span>{{this.moment(this.cond1.d_time).format('Y年MM月DD日 HH:mm:ss')}}</span>
          <span></span>
        </div>
      </div>
      <p class="concern">关注</p>
      <div class="zheng">
      {{this.cond1.content}}
      </div>
      <div class="photo">
        <img src="img/1900.jpg" />
        <img src="img/1910.jpg" />
        <img src="img/1961.jpg" />
        <img src="img/1990.jpg" />
      </div>
      <div class="my_bottom">
        <div><img src="img/ddz.png" alt="" /></div>
        <div><img src="img/ppl.png" alt="" /></div>
        <div><img src="img/zzf.png" alt="" /></div>
      </div>
    </div>
    <div class="condition">
      <div>
        <div><img :src="this.cond2.img" alt="" /></div>
        <div>
          <p>{{this.cond2.user_id}}</p>
          <span>{{this.moment(this.cond2.d_time).format('Y年MM月DD日 HH:mm:ss')}}</span>
          <span></span>
        </div>
      </div>
      <p class="concern">关注</p>
      <div class="zheng">
      {{this.cond2.content}}
      </div>
      <div class="photo">
        <img src="img/1911.jpg" />
        <img src="img/1912.jpg" />
        <img src="img/1914.jpg" />
        <img src="img/1915.jpg" />
      </div>
      <div class="my_bottom">
        <div><img src="img/ddz.png" alt="" /></div>
        <div><img src="img/ppl.png" alt="" /></div>
        <div><img src="img/zzf.png" alt="" /></div>
      </div>
    </div>
    <div class="condition">
      <div>
        <div><img :src="this.cond3.img" alt="" /></div>
        <div>
          <p>{{this.cond3.user_id}}</p>
          <span>{{this.moment(this.cond3.d_time).format('Y年MM月DD日 HH:mm:ss')}}</span>
          <span></span>
        </div>
      </div>
      <p class="concern">关注</p>
      <div class="zheng">
      {{this.cond3.content}}
      </div>
      <div class="photo">
        <img src="img/1916.jpg" />
        <img src="img/1917.jpg" />
        <img src="img/1918.jpg" />
        <img src="img/1919.jpg" />
      </div>
      <div class="my_bottom">
        <div><img src="img/ddz.png" alt="" /></div>
        <div><img src="img/ppl.png" alt="" /></div>
        <div><img src="img/zzf.png" alt="" /></div>
      </div>
    </div>
    <div class="condition">
      <div>
        <div><img :src="this.cond4.img" alt="" /></div>
        <div>
          <p>{{this.cond4.user_id}}</p>
          <span>{{this.moment(this.cond4.d_time).format('Y年MM月DD日 HH:mm:ss')}}</span>
          <span></span>
        </div>
      </div>
      <p class="concern">关注</p>
      <div class="zheng">
      {{this.cond4.content}}
      </div>
      <div class="photo">
        <img src="img/1920.jpg" />
        <img src="img/1921.jpg" />
        <img src="img/1923.jpg" />
        <img src="img/1924.jpg" />
      </div>
      <div class="my_bottom">
        <div><img src="img/ddz.png" alt="" /></div>
        <div><img src="img/ppl.png" alt="" /></div>
        <div><img src="img/zzf.png" alt="" /></div>
      </div>
    </div>
    <div class="condition">
      <div>
        <div><img :src="this.cond5.img" alt="" /></div>
        <div>
          <p>{{this.cond5.user_id}}</p>
          <span>{{this.moment(this.cond5.d_time).format('Y年MM月DD日 HH:mm:ss')}}</span>
          <span></span>
        </div>
      </div>
      <p class="concern">关注</p>
      <div class="zheng">
      {{this.cond5.content}}
      </div>
      <div class="photo">
        <img src="img/1929.jpg" />
        <img src="img/1930.jpg" />
        <img src="img/1931.jpg" />
        <img src="img/yc.jpg" />
      </div>
      <div class="my_bottom">
        <div><img src="img/ddz.png" alt="" /></div>
        <div><img src="img/ppl.png" alt="" /></div>
        <div><img src="img/zzf.png" alt="" /></div>
      </div>
    </div>
    <div class="condition">
      <div>
        <div><img :src="this.cond6.img" alt="" /></div>
        <div>
          <p>{{this.cond6.user_id}}</p>
          <span>{{this.moment(this.cond6.d_time).format('Y年MM月DD日 HH:mm:ss')}}</span>
          <span></span>
        </div>
      </div>
      <p class="concern">关注</p>
      <div class="zheng">
      {{this.cond6.content}}
      </div>
      <div class="photo">
        <img src="img/1900.jpg" />
        <img src="img/1910.jpg" />
        <img src="img/1961.jpg" />
        <img src="img/1990.jpg" />
      </div>
      <div class="my_bottom">
        <div><img src="img/ddz.png" alt="" /></div>
        <div><img src="img/ppl.png" alt="" /></div>
        <div><img src="img/zzf.png" alt="" /></div>
      </div>
    </div>
     <div class="condition">
      <div>
        <div><img :src="this.cond7.img" alt="" /></div>
        <div>
          <p>{{this.cond7.user_id}}</p>
          <span>{{this.moment(this.cond7.d_time).format('Y年MM月DD日 HH:mm:ss')}}</span>
          <span></span>
        </div>
      </div>
      <p class="concern">关注</p>
      <div class="zheng">
      {{this.cond7.content}}
      </div>
      <div class="photo">
        <img src="img/1900.jpg" />
        <img src="img/1910.jpg" />
        <img src="img/1961.jpg" />
        <img src="img/1990.jpg" />
      </div>
      <div class="my_bottom">
        <div><img src="img/ddz.png" alt="" /></div>
        <div><img src="img/ppl.png" alt="" /></div>
        <div><img src="img/zzf.png" alt="" /></div>
      </div>
    </div>
    <tabbar></tabbar>
  </div>
</template>
<style>
.conditions {
  margin-bottom: 40px;
}
.conditions .d5 {
  margin-top: 45px;
}
.conditions .mint-header {
  height: 40px;
  font-size: 14px;
}
.conditions .mintui {
  font-size: 14px;
}
.conditions .condition{
position: relative;
}
.conditions .condition > div:nth-child(1) {
  width: 370px;
  display: flex;
  justify-content: start;
  align-items: center;
  margin-top: 20px;
}
.conditions .condition > div:nth-child(1) > div > img {
  border-radius: 50%;
  width: 40px;
  height: 40px;
  margin-right: 8px;
  margin-left: 2px;
}
.conditions .condition > div > div:nth-child(2) > p {
  font-size: 14px;
  font-weight: bold;
}
.conditions .concern {
  width: 60px;
  height: 16px;
  font-size: 12px;
  padding-top: 5px;
  border: 1px solid #f56213;
  border-radius: 30px;
  position: absolute;
  left: 300px;
  top: 5px;
  text-align: center;
}
.conditions .zheng {
  width: 373px;
  font-size: 14px;
  line-height: 20px;
  margin-left: 2px;
}
.conditions .photo {
  width: 372px;
  display: flex;
  justify-content: start;
  align-items: center;
  flex-wrap: wrap;
  padding-left: 2px;
}
.conditions .photo > img {
  width: 178px;
  height: 115px;
  margin: 3px;
}
.conditions .my_bottom {
  width: 360px;
  margin-top: 8px;
  display: flex;
  justify-content: space-around;
  align-content: center;
}
.conditions .my_bottom > div {
  font-size: 14px;
  text-decoration: none;
  width: 123px;
  text-align: center;
}
.conditions .my_bottom > div > img {
  width: 20px;
  height: 20px;
  margin-right: 3px;
}
</style>
<script>
export default {
  data(){
    return{
      tabbar:"near",
      cond1:{},
      cond2:{},
      cond3:{},
      cond4:{},
      cond5:{},
      cond6:{},
      cond7:{}
    }
  },
  mounted(){
    this.axios.get("/conditions/condition").then(result=>{
    [this.cond1,this.cond2,this.cond3,this.cond4,this.cond5,this.cond6,this.cond7] = result.data;
   })

  },
}
</script>>