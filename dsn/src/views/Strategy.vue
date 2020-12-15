<template>
  <div class="strategy">
    <mt-header title="旅游攻略" fixed>
      <router-link to="/index" slot="left">
        <mt-button icon="back"></mt-button>
      </router-link>
      <router-link to="" slot="right">
          <mt-button icon="more"></mt-button>
      </router-link>
    </mt-header>
    <div class="content">
      <div><img src="img/tt.jpg" /></div>
      <div>
        欢迎来到一个前所未见的神奇世界，在此点亮您的心中奇梦。这就是上海迪士尼乐园，无论老幼，都可以在此感受充满创造力、冒险和刺激的乐趣！把目光投向奇幻童话城堡，世界上最大的迪士尼城堡，准备好开始探索这七大各具魅力而令人难忘的神奇园区：米奇大街、奇想花园、梦幻世界、探险岛、宝藏湾、明日世界和迪士尼·皮克斯玩具总动员主题园区。
      </div>
      <hr>
      <div>
        <div><img src="img/timg.jpg" /></div>
        <router-link to="/details">
          <div class="my-width">
            <h3>游乐项目</h3>
            <p>
              您可以尽情探索古老文明，寻找神兽；加入海盗们来一场寻宝之旅；体验炫酷的“创极速光轮”，身临迪士尼经典电影场景！
            </p>
          </div>
        </router-link>
      </div>
      <hr>
      <div>
        <div><img src="img/yc.jpg" /></div>
        <router-link to="/details1">
        <div>
          <h3>娱乐演出</h3>
          <p>
            在观看花车巡游时向你喜爱的迪士尼朋友挥挥手，加入杰克船长的传奇历险之旅，并亲眼见见米奇！
          </p>
        </div>
         </router-link>
      </div>
      <hr>
      <div>
        <div><img src="img/ms.jpg"></div>
         <router-link to="/details2">
        <div>
          <h3>美食体验</h3>
          <p>
            无论您想在奇幻童话城堡的“皇家宴会厅”中享受一番，还是像在宝藏湾有着传奇经历的海盗一样大快朵颐，这里都会满足您。多国菜系，多种菜式，多样服务，任君挑选！
          </p>
        </div>
         </router-link>
      </div>
      <hr>
      <div>
        <div><img src="img/gw.jpg"></div>
        <router-link to="/details3">
        <div>
          <h3>购物体验</h3>
          <p>
            寄情于达菲熊的收藏徽章？这里纪念品、主题商品和定制商品一应俱全。把魔法带回家，让这个旅程成为一生难忘的回忆！
          </p>
        </div>
         </router-link>
      </div>
    </div>
  </div>
</template>
<style>
.strategy{
  background-color: #f8f8f8;
}
.strategy .content div > a {
  color: #333;
  text-decoration: none;
}
.strategy .mint-header{
   height: 40px;
   font-size: 14px;
}
.strategy .mintui{
  font-size: 14px;
}
.strategy h3 {
  margin-top: 10px;
}
.strategy .content > h1 {
  font-weight: normal;
  margin-top: 20px;
  margin-bottom: 15px;
}
.strategy .content > div {
  width: 370px;
}
.strategy .content>div:nth-child(1)> img {
  width: 370px;
  margin-top: 45px;
  border-radius: 5px;
  margin-left: 2px;
}
.strategy .content > div:nth-child(2) {
  font-size: 14px;
  line-height: 30px;
  margin-top: 5px;
  margin-bottom: 20px;
  margin-left: 2px;
  background-color: rgb(255, 255, 255);
  padding-bottom: 5px;
  padding-top: 5px;
  text-indent:2rem;
}
.strategy .content > div:nth-child(4),
.strategy .content > div:nth-child(6),
.strategy .content > div:nth-child(8),
.strategy .content > div:nth-child(10) {
  display: flex;
  justify-content: flex-start;
  align-items: center;
}
.strategy .content>div>div > img {
  width: 100px;
  height: 66px;
  margin-left: 2px;
  border-radius: 5px;
}
.strategy hr {
  width: 373px;
  height: 1px;
  background: rgb(14, 134, 226);
  margin-left: 0;
  margin-top: 15px;
  margin-bottom: 15px;
}
.strategy .content div div > h3 {
  margin-left: 10px;
  font-size: 14px;
  font-weight: bold;
}
.strategy .content div div > p {
  font-size: 13px;
  margin: 10px;
  margin-top: 4px;
}
</style>