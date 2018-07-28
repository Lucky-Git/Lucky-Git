<template>
  <div class="page-container">
    <md-app md-waterfall md-mode="fixed-last">
      <md-app-toolbar class="md-large md-dense md-primary">
        <div class="md-toolbar-row">
          <div class="md-toolbar-section-start">
            <md-button class="md-icon-button" @click="menuVisible = !menuVisible">
              <md-icon>menu</md-icon>
            </md-button>
            <router-link to="/Home">
              <span class="md-title">EasyLearning在线学习网</span>
            </router-link>
          </div>
        </div>
        <div class="md-toolbar-row">
          <md-tabs class="md-primary" md-active-tab="tab6">
            <md-tab id="tab0" md-label="首页" to="/Home"></md-tab>
            <md-tab id="tab1" md-label="HTML" to="/Html"></md-tab>
            <md-tab id="tab2" md-label="C语言" to="/Clang"></md-tab>
            <md-tab id="tab3" md-label="操作系统" to="/Os"></md-tab>
            <md-tab id="tab4" md-label="数据结构" to="/Ds"></md-tab>
            <md-tab id="tab5" md-label="计算机组成原理" to="/Cc"></md-tab>
            <md-tab id="tab6" md-label="计算机网络" to="/Cn"></md-tab>
          </md-tabs>
        </div>
      </md-app-toolbar>
      <md-app-drawer :md-active.sync="menuVisible">
        <md-toolbar class="md-transparent" md-elevation="0">小测验</md-toolbar>
        <md-list>
          <md-list-item>
            <router-link to="/Home">
              <span class="md-list-item-text">HTML测验</span>
            </router-link>
          </md-list-item>
          <md-list-item>
            <router-link to="/Home">
              <span class="md-list-item-text">C语言测验</span>
            </router-link>
          </md-list-item>
          <md-list-item>
            <router-link to="/Home">
              <span class="md-list-item-text">操作系统测验</span>
            </router-link>
          </md-list-item>
          <md-list-item>
            <router-link to="/Home">
              <span class="md-list-item-text">数据结构测验</span>
            </router-link>
          </md-list-item>
          <md-list-item>
            <router-link to="/Home">
              <span class="md-list-item-text">计算机组成原理测验</span>
            </router-link>
          </md-list-item>
          <md-list-item>
            <router-link to="/Home">
              <span class="md-list-item-text">计算机网络测验</span>
            </router-link>
          </md-list-item>
        </md-list>
      </md-app-drawer>
      <md-app-content>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-display-1">计算机网络教程</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-primary">下一节</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">计算机网络教程</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">计算机网络，是指将地理位置不同的具有独立功能的多台计算机及其外部设备，通过通信线路连接起来。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在网络操作系统，网络管理软件及网络通信协议的管理和协调下，实现资源共享和信息传递的计算机系统。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Home">
            <span class="md-subheading">现在开始学习HTML！</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">计算机网络实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">通过这些实例来更好的理解和学习知识</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Home">
            <span class="md-subheading">亲自试一试吧！</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">计算机网络测验</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在这里，测试你的计算机网络技能吧！</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Home">
            <span class="md-subheading">开始计算机网络测验！</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px">
          <md-button class="md-raised md-primary">下一节</md-button>
        </div>
      </md-app-content>
    </md-app>
  </div>
</template>
<!-- script -->
<script>
export default {
  name: 'Home',
  data() {
    return {
      menuVisible: false
    }
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.md-drawer {
  width: 200px;
  max-width: calc(100vw - 125px);
}

</style>
