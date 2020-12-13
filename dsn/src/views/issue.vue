<template>
<div class="issue">
    <mt-header title="发表动态">
        <span slot="left" class="off">取消</span>
        <button slot="right" class="sell">发送</button>
    </mt-header>
    <textarea class="content" placeholder="分享快乐..."> </textarea>
    <mt-tabbar>
        <mt-tab-item id="tu">图片</mt-tab-item>
        <mt-tab-item id="tu">话题</mt-tab-item>
        <mt-tab-item id="tu">表情</mt-tab-item> 
        <mt-tab-item id="tu">添加</mt-tab-item>
    </mt-tabbar>
</div>
</template>
<style>
    .issue .mint-header{
        color: black;
        background-color: rgb(218, 217, 217);
    }
    .issue .mint-header .mint-header-title{
        font-weight: bolder;
        line-height: 25px;
    }
    .issue .mint-header .sell{
        border-radius: 10px;
        background-color: #ff6644;
        border: none;
        font-size: 12px;
        padding: 5px 15px;
        color: #fff;
    }
    .issue .content{
        width: 335px;
        height:350px;
        border: none; 
        font-size: 14px;
        margin: 20px 15px;  
    }

</style>
<script>
export default {
    
}
</script>