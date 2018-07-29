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
          <span class="md-display-1">HTML简介</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Html">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Htmledit">
            <md-button class="md-raised md-accent">下一节</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div class="md-layout md-gutter" style="margin-top: 20px;;margin-bottom: 20px">
          <div class="md-layout-item">
            <md-card>
              <md-card-header>
                <div class="md-title">实例引入</div>
              </md-card-header>
              <md-card-content>
                &lt;html&gt;
                <br>
                <br>&lt;body&gt;
                <br>
                <br>&lt;h1&gt;My First Heading&lt;/h1&gt;
                <br>&lt;p&gt;My first paragraph.&lt;/p&gt;
                <br>
                <br>&lt;/body&gt;
                <br>
                <br>&lt;/html&gt;
              </md-card-content>
            </md-card>
          </div>
          <div class="md-layout-item">
            <md-card>
              <md-card-header>
                <div class="md-title">实例解释</div>
              </md-card-header>
              <md-card-content>
                <li>&lt;html&gt;与&lt;/html&gt;之间的文本描述网页</li>
                <li>&lt;body&gt;与&lt;/body&gt;之间的文本是可见的页面内容</li>
                <li>&lt;h1&gt;与&lt;/h1&gt;之间的文本被显示为标题</li>
                <li>&lt;p&gt;与&lt;/p&gt;之间的文本被显示为段落</li>
              </md-card-content>
            </md-card>
          </div>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-accent" onclick="window.open('http://www.w3school.com.cn/tiy/t.asp?f=html_basic')">亲自试一试</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">什么是HTML?</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">HTML是用来描述网页的一种语言。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <ul>
            <li>HTML指的是超文本标记语言(Hyper Text Markup Language)</li>
            <li>HTML不是一种编程语言, 而是一种标记语言(markup language)</li>
            <li>标记语言是一套标记标签(markup tag)</li>
            <li>HTML使用标记标签来描述网页</li>
          </ul>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML标签</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">HTML标记标签通常被称为HTML标签(HTML tag)。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <ul>
            <li>HTML标签是由尖括号包围的关键词</li>
            <li>HTML标签通常是成对出现的</li>
            <li>标签对中的第一个标签是开始标签, 第二个标签是结束标签</li>
            <li>开始和结束标签也被称为开放标签和闭合标签</li>
          </ul>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML文档=网页</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <ul>
            <li>HTML文档描述网页</li>
            <li>HTML文档包含HTML标签和纯文本</li>
            <li>HTML文档也被称为网页</li>
          </ul>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <span class="md-subheading">Web浏览器的作用是读取HTML文档, 并以网页的形式显示出它们。浏览器不会显示HTML标签, 而是使用标签来解释页面的内容</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Html">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Htmledit">
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
