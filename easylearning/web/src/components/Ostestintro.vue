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
          <md-tabs class="md-primary" md-active-tab="tab3">
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
          <md-list-item to="/Os">
            <span class="md-list-item-text">操作系统教程</span>
          </md-list-item>
          <md-list-item to="/Ostestintro">
            <md-icon>chevron_right</md-icon>
            <span class="md-list-item-text">操作系统测验简介</span>
          </md-list-item>
          <md-list-item to="/Ostest">
            <span class="md-list-item-text">操作系统测验</span>
          </md-list-item>
        </md-list>
      </md-app-drawer>
      <md-app-content>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-display-1">操作系统测验</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Ostestintro">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">操作系统测验</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">您可以通过本系统的在线测验来测试您的操作系统技能。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">关于本测试</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-body-2">本测验包含 20 道题。 本测验是非官方的测试, 它仅仅提供了一个了解您对操作系统的掌握程度的工具。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">测验会被记分</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-body-2">每道题的分值是 1 分。在您完成全部的 20 道题之后, 系统会为您的测验打分, 并提供每道题目的正确答案。其中, 绿色为正确答案, 而红色为用户自己的答案。</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Ostest">
            <md-button class="md-raised">现在开始测验吧！</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Ostestintro">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
        </div>
      </md-app-content>
    </md-app>
  </div>
</template>
<!-- script -->
<script>
export default {
  name: 'Ostestintro',
  data() {
    return {}
  }
}

</script>
<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.md-drawer {
  width: 210px;
  max-width: calc(100vw - 125px);
}

</style>
