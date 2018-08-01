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
            <md-icon>chevron_right</md-icon>
            <span class="md-list-item-text">操作系统教程</span>
          </md-list-item>
          <md-list-item to="/Ostestintro">
            <span class="md-list-item-text">操作系统测验简介</span>
          </md-list-item>
          <md-list-item to="/Ostest">
            <span class="md-list-item-text">操作系统测验</span>
          </md-list-item>
        </md-list>
      </md-app-drawer>
      <md-app-content>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-display-1">操作系统教程</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-accent">下一节</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">操作系统教程</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在本教程中, 你将学习并了解到关于计算机硬件和软件的连接点——操作系统, 相信通过认真的学习, 你会对操作系统如何控制和管理计算机有一个更清楚地认识!</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在信息化时代, 软件被称为计算机系统的灵魂。而作为软件和新的操作系统, 已经与现代计算机系统密不可分, 融为一体。因此, 要求本质上学生能在宏观上把握操作系统各个部分的功能。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Os">
            <span class="md-subheading">现在开始学习操作系统!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">操作系统实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">通过这些实例来更好的理解和学习知识</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Os">
            <span class="md-subheading">亲自试一试吧!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">操作系统测验</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在这里, 测试你的操作系统知识吧!</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Ostestintro">
            <span class="md-subheading">开始操作系统测验!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px">
          <md-button class="md-raised md-accent">下一节</md-button>
        </div>
      </md-app-content>
    </md-app>
  </div>
</template>
<!-- script -->
<script>
export default {
  name: 'Os',
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
