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
          <md-tabs class="md-primary">
            <md-tab id="tab1" md-label="HTML基础教程" to="/Home"></md-tab>
            <md-tab id="tab2" md-label="C语言教程" to="/Home"></md-tab>
            <md-tab id="tab3" md-label="操作系统" to="/Home"></md-tab>
            <md-tab id="tab4" md-label="数据结构" to="/Home"></md-tab>
            <md-tab id="tab5" md-label="计算机组成原理" to="/Home"></md-tab>
            <md-tab id="tab6" md-label="计算机网络" to="/Home"></md-tab>
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
        <div style="text-align: center;margin-top: 20px">
          <span class="md-display-3">领先的大学基础学习课程——全部免费</span>
        </div>
        <div style="text-align: center;margin-top: 20px">
          <span class="md-headline">在EasyLearing，你可以找到你所需要的大学生应该掌握的计算机基础课程。从最基本的C语言，数据结构，再到专业的Web课程HTML。</span>
        </div>
        <div style="text-align: center;margin-top: 20px;margin-bottom: 50px">
          <span class="md-headline">领先的大学基础学习课程——全部免费</span>
        </div>
        <div class="md-layout md-gutter">
          <div class="md-layout-item">
            <md-card>
              <md-card-media>
                <img src="../assets/exam.png" alt="People">
              </md-card-media>
              <md-card-header>
                <div class="md-title">在线测试系统</div>
                <div class="md-subhead">本网站提供在线练习系统，可以自动进行客观题目阅卷，对人们所学知识进行检验。
                  <br/>
                  <br/>
                </div>
              </md-card-header>
            </md-card>
          </div>
          <div class="md-layout-item">
            <md-card>
              <md-card-media>
                <img src="../assets/reading.png" alt="People">
              </md-card-media>
              <md-card-header>
                <div class="md-title">简单高效的学习方式</div>
                <div class="md-subhead">每个人的时间都是非常宝贵的。因此，在这里为您提供了快捷易懂的学习内容。您可以通过任何一种便利高效的学习模式学习您需要的知识。
                  <br/>
                </div>
              </md-card-header>
            </md-card>
          </div>
          <div class="md-layout-item">
            <md-card>
              <md-card-media>
                <img src="../assets/loupe.png" alt="People">
              </md-card-media>
              <md-card-header>
                <div class="md-title">实例分析</div>
                <div class="md-subhead">理论知识总是抽象的，令人捉摸不透。通过对实例的分析可以化抽象为具体。您可以根据您的需要来查看不同类型的实例，来更加深入的学习知识。</div>
              </md-card-header>
            </md-card>
          </div>
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
