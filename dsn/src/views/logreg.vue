<template>
    <div class="login">
        <div class="logo">
            <img src="/img/logo/logo.png" alt="">
        </div>
        <!--登录和注册-->
        <div class="loginmain">
            <ul class="loginheader clearfix">
                <li data-btn="tab" data-divid="logincontent" @click="chose(log)" :class="{check:log}">登录</li>
                <li data-btn="tab" data-divid="registercontent" @click="chose(reg)" :class="{check:reg}">注册</li>
            </ul>
            <!--登录-->
            <div class="logincontent" id="logincontent" v-if="log==true">
                <div class="loginput">
                    <label for="uname">用户名：</label> 
                    <div>
                        <input type="text" placeholder="请输入用户名或手机号" id="uname" v-model="uname">
                    </div>
                    <label for="upwd" class="pw">密码：</label> 
                    <div>
                        <input type="password" placeholder="请输入密码" id="upwd" v-model="upwd">
                    </div>
                </div>
                <div class="fgupwd">
                    <a href="">忘记密码 ？</a>
                </div>
               <div class="loginbtn">
                    <button @click="login">登录</button>
               </div>
            </div>
              <!--注册-->
            <div class="registermain" id="registercontent" v-else>
                <div class="registercontent" >
                    <div class="registerput">
                        <label for="uname">用户名：</label> 
                        <div>
                            <input v-model="uname" type="text" placeholder="请输入用户名" id="setuname">
                        </div>
                        <label for="upwd" class="ml">设置密码：</label> 
                        <div>
                            <input v-model="upwd" type="text" placeholder="请输入6~12位密码" id="setupwd">
                        </div>
                        <label for="upwdagain" class="ml">确认密码：</label> 
                        <div>
                            <input v-model="aginupwd" type="text" placeholder="请再次输入密码" id="againupwd">
                        </div>
                        <label for="upwd">手机号：</label> 
                        <div>
                            <input v-model="phone" type="text" placeholder="请输入手机号" id="phone">
                        </div>
                    </div>
                    <div class="registerbtn">
                        <button @click="register"  :disabled="!isAgree">注册</button>
                   </div>
                   <div class="yes">
                       <input type="checkbox" :checked="isAgree">
                       <span @click="Agree"></span>
                       <span>我已阅读并同意L tide隐私权声明</span>
                   </div>
                </div>
            </div>
        </div>  
    </div>
</template>
<style>
    
/****************************************************************************************/
 .login .logo{
     width: 250px;
     height: 80px;
     margin: 0 auto;
     margin-top: 20px;
}
.login .logo img{
    width: 100%;
}
.login .loginmain{
    background-image: url(/img/bg/login-bg.jpg);
    margin-top:50px;
    padding-bottom: 80px;
}
.login .loginmain .loginheader li{
    float: left;
    height:38px;
    padding: 0px 15px;
    line-height: 38px;
    font-size: 12px;
     border: 1px solid #ff6644;
    background-color:transparent;
    color:#ff6644;
    cursor: pointer;
}
.login .loginmain .loginheader li a{
    color:white;
}
.login .loginmain .loginheader .check{
    background-color:#ff6644;
    color: white;
    
}
.login .loginmain .loginheader{
    width: 112px;
    list-style: none;
    margin: 0 auto;
    padding-top: 50px;
}
/*登录注册主体*/
.login .logincontent,.login .registermain{
    width:240px;
    margin: 20px auto;
    margin-top: 100px;
    color: #000;
    font-size: 13px;
}
.login .logincontent .loginput div,.login .registercontent .registerput div{
    display: inline-block;
    width: 180px;
    border-bottom: 1px solid #424040;
    margin-bottom: 30px;
}
.login .logincontent .loginput>.pw{
   
    margin-left: 12px;
}
.login .logincontent .loginput div input,.login .registercontent .registerput div input{
    border: none;
    outline: none;
    background-color:transparent;
    font-size: 12px;
    font-weight: bold;
    padding-left: 15px;
    color: #000;
}
.login .registercontent .registerput .ml{
    display: inline-block;
    margin-left: -14px;
}
.login .fgupwd{
    margin-left:160px;
}
.login .fgupwd a{
    font-weight:normal;
    font-size: 12px;
    color: #ff6644;
}
/*登录注册输入框*/
.login .logincontent{
    margin-bottom: 100px;
}
.login .active{
    display: block;
}
/*登录注册按钮*/
.login .loginbtn button,.login .registerbtn button{
    display: block;
    margin: 0 auto;
    outline: none;
    border: none;
    width: 160px;
    height: 42px;
    background-color:#ff6644;
    color: white;
    margin-top: 30px;
    border-radius: 5px;
    
}
.login .registerbtn button{
    margin-bottom: 40px;
}
/*复选框*/
.login .registermain .yes{
    text-align: center; 
    position: relative;
    font-size: 12px;
    font-weight: normal;
}
.login .registermain .yes input{
   display: none;
}
.login .registermain .yes input[type=checkbox]+span{
    display: inline-block;
	width: 10px;
	height: 10px;
	border: 2px solid #000;
	color:white;
	position: absolute;
	top: -1px;
	left:10px;
}
.login .registermain .yes input[type=checkbox]:checked+span::after{
    content: '\2714';
	position: absolute;
    font-size: 10px;
    top: -3px;
    left: 0.05rem;
    color: #000;
}
/*******************************************************************************/
</style>
<script>
export default {
    data(){
        return{
            log:true,
            reg:false,
            isAgree:false,
            uname:"",
            upwd:"",
            aginupwd:"",
            phone:"",
        }
    },
    methods:{
        chose(n){
            if(n==true){
            }else{
                 if(this.log==true){
               this.log=false;
               this.reg=true;
           }else{
               this.log=true;
               this.reg=false;
           }
            }
        },
        Agree(){
            this.isAgree=this.isAgree==true?false:true;
        },
        login(){
            getLogin(this.uname,this.upwd).then(result=>{
                if(result.length>0){
                    alert("登录成功");
                    //提交mutations，以改变用户登录状态
                    this.$store.commit('loginMutations',result[0]);
                    //将用户信息和登录状态再存一份到webstoreage
                    localStorage.setItem("islogin",1);
                    localStorage.setItem("info",JSON.stringify(result[0]));
                    this.$router.push("/");
                }else{
                    alert("用户名或密码错误");
                }
            });
        },
        register(){
            //确认密码是否正确正确
            var reg=new RegExp("^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$","ig"); 
            var zq=reg.test(this.upwd);
             console.log(zq);
            //两次密码是否一致
            var agin=this.upwd==this.aginupwd;
            if(zq!=true){
                alert("密码格式不正确");
                return
            }else if(agin!=true){
                alert("两次密码不一致");
                return
            }
           getreg(this.uname,this.upwd,this.aginupwd,this.phone).then(result=>{
               if(result>0){
                   alert("注册成功");
                   this.chose(this.log);
               }
           });
        }
    },
    mounted(){
       
    }
}
</script>