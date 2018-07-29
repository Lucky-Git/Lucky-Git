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
          <md-tabs class="md-primary" md-active-tab="tab5">
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
          <span class="md-display-1">计算机组成原理教程</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-accent">下一节</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">计算机组成原理教程</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">计算机组成原理系统地介绍了计算机的基本组成原理和内部工作机制。《计算机组成原理》共分7章, 主要内容分成两个部分: 第1、2章介绍了计算机的基础知识；第3～7章介绍了计算机的各子系统（包括运算器、存储器、控制器、外部设备和输入输出子系统等）的基本组成原理、设计方法、相互关系以及各子系统互相连接构成整机系统的技术。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">计算机组成原理讲述了计算机的一般原理, 并注意到与实际应用相结合。本教程内容由浅入深, 每章之后均附有习题, 便于自学。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Home">
            <span class="md-subheading">现在开始学习计算机组成原理!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">计算机组成原理实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">通过这些实例来更好的理解和学习知识</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Home">
            <span class="md-subheading">亲自试一试吧!</span>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-title">计算机组成原理测验</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在这里, 测试你的计算机组成原理知识吧!</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <router-link to="/Home">
            <span class="md-subheading">开始计算机组成原理测验!</span>
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
