<template>
  <div class="page-container">
    <md-app md-waterfall md-mode="fixed-last">
      <md-app-toolbar class="md-large md-dense md-primary">
        <div class="md-toolbar-row">
          <div class="md-toolbar-section-start">
            <md-button disabled class="md-icon-button">
              <md-icon>home</md-icon>
            </md-button>
            <router-link to="/Home">
              <span class="md-title">EasyLearning在线学习网</span>
            </router-link>
          </div>
        </div>
        <div class="md-toolbar-row">
          <md-tabs class="md-primary" md-active-tab="tab2">
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
      <md-app-drawer md-permanent="card">
        <md-list>
          <md-list-item>
            <md-icon>move_to_inbox</md-icon>
            <span class="md-list-item-text">Inbox</span>
          </md-list-item>
          <md-list-item>
            <md-icon>send</md-icon>
            <span class="md-list-item-text">Sent Mail</span>
          </md-list-item>
          <md-list-item>
            <md-icon>delete</md-icon>
            <span class="md-list-item-text">Trash</span>
          </md-list-item>
          <md-list-item>
            <md-icon>error</md-icon>
            <span class="md-list-item-text">Spam</span>
          </md-list-item>
        </md-list>
      </md-app-drawer>
      <md-app-content>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-display-1">C语言教程</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Clangintro">
            <md-button class="md-raised md-accent">下一节</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">C语言教程</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在本教程中, 你将学习如何使用C语言来编写程序。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">C语言是计算机高级语言的一种, 是高级语言的基础, 让我们一起来轻松地学吧!</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Clangintro">
            <span class="md-subheading">现在开始学习C语言!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">C语言实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">通过这些实例来更好的理解和学习知识</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Clang">
            <span class="md-subheading">亲自试一试吧!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">C语言测验</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在这里, 测试你的C语言知识吧!</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Clang">
            <span class="md-subheading">开始C语言测验!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px">
          <router-link to="/Clangintro">
            <md-button class="md-raised md-accent">下一节</md-button>
          </router-link>
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
    return {}
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
