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
          <md-tabs class="md-primary" md-active-tab="tab1">
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
          <md-list-item to="/Html">
            <md-icon>chevron_right</md-icon>
            <span class="md-list-item-text">HTML教程</span>
          </md-list-item>
          <md-list-item to="/Htmlintro">
            <span class="md-list-item-text">HTML简介</span>
          </md-list-item>
          <md-list-item to="/Htmledit">
            <span class="md-list-item-text">HTML编辑器</span>
          </md-list-item>
          <md-list-item to="/Htmlbasic">
            <span class="md-list-item-text">HTML基础</span>
          </md-list-item>
          <md-list-item to="/Htmlobj">
            <span class="md-list-item-text">HTML实例</span>
          </md-list-item>
          <md-list-item to="/Htmltestintro">
            <span class="md-list-item-text">HTML测验简介</span>
          </md-list-item>
          <md-list-item to="/Htmltest">
            <span class="md-list-item-text">HTML测验</span>
          </md-list-item>
        </md-list>
      </md-app-drawer>
      <md-app-content>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-display-1">HTML教程</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Htmlintro">
            <md-button class="md-raised md-accent">下一节</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">HTML教程</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在本教程中, 你将学习如何使用HTML来创建站点。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">HTML是网站建设的基础, 很简单的, 让我们一起来轻松地学吧!</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Htmlintro">
            <span class="md-subheading">现在开始学习HTML!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">通过这些实例来更好的理解和学习知识</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Htmlobj">
            <span class="md-subheading">亲自试一试吧!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">HTML测验</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在这里, 测试你的HTML知识吧!</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Htmltestintro">
            <span class="md-subheading">开始HTML测验!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Htmlintro">
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
  name: 'Html',
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
