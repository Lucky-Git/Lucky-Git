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
          <span class="md-display-1">基本的HTML标签-四个实例</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Htmledit">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Htmledit">
            <md-button class="md-raised md-accent">下一节</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">本章通过实例向您演示最常用的 HTML 标签。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">提示: 不要担心本章中您还没有学过的例子, 您将在下面的章节中学到它们。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <span class="md-subheading">提示: 学习 HTML 最好的方式就是边学边做实验。我们为您准备了很好的 HTML 编辑器。使用这个编辑器, 您可以任意编辑一段 HTML 源码, 然后单击 TIY 按钮来查看结果。</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML标题</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">HTML 标题（Heading）是通过 &lt;h1&gt; - &lt;h6&gt;等标签进行定义的。</span>
        </div>
        <md-card>
          <md-card-header>
            <div class="md-title">实例</div>
          </md-card-header>
          <md-card-content>
            &lt;html&gt;
            <br>&lt;body&gt;
            <br>
            <br>&lt;h1&gt;This is heading 1&lt;/h1&gt;
            <br>&lt;h2&gt;This is heading 2&lt;/h2&gt;
            <br>&lt;h3&gt;This is heading 3&lt;/h3&gt;
            <br>&lt;h4&gt;This is heading 4&lt;/h4&gt;
            <br>&lt;h5&gt;This is heading 5&lt;/h5&gt;
            <br>&lt;h6&gt;This is heading 6&lt;/h6&gt;
            <br>
            <br>&lt;p&gt;请仅仅把标题标签用于标题文本。不要仅仅为了产生粗体文本而使用它们。请使用其它标签或 CSS 代替。&lt;/p&gt;
            <br>
            <br>&lt;/body&gt;
            <br>&lt;/html&gt;
          </md-card-content>
        </md-card>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-accent" onclick="window.open('http://www.w3school.com.cn/tiy/t.asp?f=html_headers')">亲自试一试</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML段落</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">HTML 段落是通过 &lt;p&gt; 标签进行定义的。</span>
        </div>
        <md-card>
          <md-card-header>
            <div class="md-title">实例</div>
          </md-card-header>
          <md-card-content>
            &lt;html&gt;
            <br>&lt;body&gt;
            <br>
            <br>&lt;p&gt;这是段落。&lt;/p&gt;
            <br>&lt;p&gt;这是段落。&lt;/p&gt;
            <br>&lt;p&gt;这是段落。&lt;/p&gt;
            <br>
            <br>&lt;p&gt;段落元素由 p 标签定义。&lt;/p&gt;
            <br>
            <br>&lt;/body&gt;
            <br>&lt;/html&gt;
          </md-card-content>
        </md-card>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-accent" onclick="window.open('http://www.w3school.com.cn/tiy/t.asp?f=html_paragraphs1')">亲自试一试</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML链接</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">HTML 链接是通过 &lt;a&gt;标签进行定义的。</span>
        </div>
        <md-card>
          <md-card-header>
            <div class="md-title">实例</div>
          </md-card-header>
          <md-card-content>
            &lt;html&gt;
            <br>&lt;body&gt;
            <br>
            <br>&lt;a href="http://www.w3school.com.cn"&gt; This is a link&lt;/a&gt;
            <br>
            <br>&lt;/body&gt;
            <br>&lt;/html&gt;
          </md-card-content>
        </md-card>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">注释: 在 href 属性中指定链接的地址。（您将在本教程稍后的章节中学习更多有关属性的知识）。</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-accent" onclick="window.open('http://www.w3school.com.cn/tiy/t.asp?f=html_basic_link')">亲自试一试</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML 图像</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">HTML 图像是通过 &lt;img&gt;标签进行定义的。</span>
        </div>
        <md-card>
          <md-card-header>
            <div class="md-title">实例</div>
          </md-card-header>
          <md-card-content>
            &lt;html&gt;
            <br>&lt;body&gt;
            <br>
            <br>&lt;img src="/i/eg_w3school.gif" width="300" height="120" /&gt;
            <br>
            <br>&lt;/body&gt;
            <br>&lt;/html&gt;
          </md-card-content>
        </md-card>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">注释: 图像的名称和尺寸是以属性的形式提供的。</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-accent" onclick="window.open('http://www.w3school.com.cn/tiy/t.asp?f=html_basic_img')">亲自试一试</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Htmledit">
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
