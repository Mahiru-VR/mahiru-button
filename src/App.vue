<template>
  <div id="app">
        <Modal></Modal>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">{{ $t("action.toggleNavbar") }}</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="mahiru-title">
                    <router-link class="navbar-brand" to="/">{{ $t("info.title") }}</router-link>
                    </div>
                </div>
                <div class="collapse navbar-collapse" id="bs-navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="https://space.bilibili.com/477306079/" target="_blank"><img src="resources/Bilibili.png" height="20"/></a></li>
                        <li><a href="https://mihiru.com" target="_blank"><img src="resources/mihiru-favicon.ico" height="20"/></a></li>
                        <!-- https://space.bilibili.com/481152650 -->
                        <li class="temp">音量注意</li>
                        <!-- <li><a href="https://mihiru.com" target="_blank"><img src="resources/mihiru-favicon.ico" height="20"/></a></li>
                        <li><a href="https://twitter.com/minatoaqua" target="_blank"><img src="resources/Twitter_Social_Icon_Circle_Color.png" height="18"/></a></li> -->
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{$t("lang." + currentLang)}} <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;" @click="chlang('zh-CN')">{{$t("lang.zh-CN")}}</a></li>
                                <!--<li><a href="javascript:;" @click="chlang('en-US')">{{$t("lang.en-US")}}</a></li>-->
                                <li><a href="javascript:;" @click="chlang('ja-JP')">{{$t("lang.ja-JP")}}</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

            </div>
        </nav>
        <div class="container-fluid main-content">
            <router-view></router-view>
        </div>
        <footer class="footer">
            <div class="container-fluid footer-content">
                <div class="pull-left">
                    <div>{{$t("info.audioStaff")}}</div>
                    <div><a href="https://github.com/zyzsdy/aqua-button" target="_blank">{{$t("info.toGithub")}} <img src="https://img.shields.io/github/stars/zyzsdy/aqua-button.svg?style=social"/></a></div>
                </div>
                <div class="pull-right">
                    <div>音频投稿请致: mahiruvr@163.com</div>
                    <div class="text-right"><img src="resources/mihiru-favicon.ico" height="18"><a href="https://mihiru.com/miarticles/" target="_blank">来看篇怪文书吧</a></div>
                    <!-- <div class="text-right">{{$t("info.notOfficial")}}</div> -->
                </div>
                <!-- <div>Zyzsdy 2019-2020 <span style="color: rgba(0, 0, 0, 0.1)">Powered By Meowsound Idols</span></div> -->
            </div>
        </footer>
  </div>
</template>

<style lang="scss">
@import "../node_modules/bootstrap/dist/css/bootstrap.css";
body{
    padding-top: 70px;
    height: 100%;
}
.main-content{
    //min-height: 100vh;
    flex:1 0 auto;
}
.footer {
    width: 100%;
    //height: 60px;
    flex-shrink: 0;
    background-color: #ebebeb;
}
.footer-content {
    padding-top: 5px;
    flex-direction: row;
    display: flex;
    color: #666;
    padding-bottom: 5px;
}
.text-right{
    text-align: right;
}
.mahiru-icon{
    display: block; 
    margin: auto;
}
.mahiru-title{
    vertical-align:middle;
}

.temp{
    float: left;
    height: 50px;
    padding: 15px 15px;
    font-size: 18px;
    line-height: 20px;
    color:rgba(0, 0, 0, 0.5);
}

.pull-left{
    flex:auto;
}

#app{
    display: flex;
    flex-direction: column;
    height: 100%;
}

</style>

<script>
import Vue from 'vue'
import Component from 'vue-class-component'
import Modal from './components/modal.vue'
//import fetchpost from './util/fetchpost'

@Component({
    components:{
        Modal
    }
})
class App extends Vue {
    get currentLang(){
        return this.$i18n.locale;
    }
    created(){
        // eslint-disable-next-line 
        console.log("Produced by MoewSound Idols");
        this.$i18n.locale = localStorage.getItem("lang") || this.$i18n.locale;
    }
    chlang(v){
        this.$i18n.locale = v;
        localStorage.setItem("lang", v);
    }
}

export default App;
</script>

