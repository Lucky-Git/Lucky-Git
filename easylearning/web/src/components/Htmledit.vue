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
            <span class="md-list-item-text">HTML教程</span>
          </md-list-item>
          <md-list-item to="/Htmlintro">
            <span class="md-list-item-text">HTML简介</span>
          </md-list-item>
          <md-list-item to="/Htmledit">
            <md-icon>chevron_right</md-icon>
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
          <span class="md-display-1">HTML编辑器</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Htmlintro">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Htmlbasic">
            <md-button class="md-raised md-accent">下一节</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">使用 Notepad 或 TextEdit 来编写 HTML</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">可以使用专业的 HTML 编辑器来编辑 HTML: </span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <ul>
            <li>Adobe Dreamweaver</li>
            <li>AMicrosoft Expression Web</li>
            <li>CoffeeCup HTML Editor</li>
          </ul>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">不过, 我们同时推荐使用文本编辑器来学习 HTML, 比如 Notepad (PC) 或 TextEdit (Mac)。我们相信, 使用一款简单的文本编辑器是学习 HTML 的好方法。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <span class="md-subheading">通过记事本, 依照以下四步来创建您的第一张网页。</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">步骤一: 启动记事本</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">如何启动记事本: </span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <ol>
            <li>开始</li>
            <li>所有程序</li>
            <li>附件</li>
            <li>记事本</li>
          </ol>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">步骤二: 用记事本来编辑 HTML</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在记事本中键入 HTML 代码: </span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <img src="../assets/HTML编辑器1.gif">
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">步骤三: 保存 HTML</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">在记事本的文件菜单选择“另存为”。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <span class="md-subheading">当您保存 HTML 文件时, 既可以使用 .htm 也可以使用 .html 扩展名。两者没有区别, 完全根据您的喜好。 在一个容易记忆的文件夹中保存这个文件, 比如 w3school。</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">步骤四: 在浏览器中运行这个 HTML 文件</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">启动您的浏览器, 然后选择“文件”菜单的“打开文件”命令, 或者直接在文件夹中双击您的 HTML 文件。 结果应该类似这样: </span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <img src="../assets/HTML编辑器2.gif">
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Htmlintro">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Htmlbasic">
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
  name: 'Htmledit',
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
