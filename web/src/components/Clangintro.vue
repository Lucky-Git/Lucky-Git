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
          <span class="md-display-1">C语言简介</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Clang">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Clangbasic">
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
                #include"stdio.h"
                <br> int main()
                <br> {
                <br> printf("Hello,World!\n");
                <br> return 0;
                <br> }
              </md-card-content>
            </md-card>
          </div>
          <div class="md-layout-item">
            <md-card>
              <md-card-header>
                <div class="md-title">实例解释</div>
              </md-card-header>
              <md-card-content>
                <li>#include"stdio.h":编译预处理指令，负责组织程序</li>
                <li>int main():主函数的函数头</li>
                <li>{}:一对大括号内的是函数头</li>
                <li>printf("Hello，World!"):从屏幕输出字符串“Hello,World!”</li>
                <li>return 0:函数返回值</li>
              </md-card-content>
            </md-card>
          </div>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button class="md-raised md-accent" onclick="window.open('https://tool.lu/coderunner/')">亲自试一试</md-button>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">什么是程序？</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">程序是为了通过计算机实现某种功能而编写的计算机指令序列。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <ul>
            <li>计算机本身并不能做任何事情，需要人告诉它要做什么事情、每一步要如何做。计算机不能理解人类的自然语言，因此要通过计算机能够理解的语言告诉计算机做什么，这种语言就是程序设计语言。</li>
            <li>程序设计语言分为机器语言和高级语言。</li>
            <li>机器语言：一类完全针对计算机的计算特点的语言，如机器码、汇编语言。（这类语言对于人类来说难以读懂，虽然执行效率高，但编写率低，编程工作量巨大。）</li>
            <li>高级程序设计语言：为了方便人类的理解，人们创造了高级程序设计语言，这类语言在针对计算机的计算特点外，兼顾了人类的语言特点，可读性强，便携方便，如C语言、FORTRAN、java等。</li>
          </ul>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">HTML标记标签通常被称为HTML标签(HTML tag)。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <ul>
            <li>每一条指令称为一条语句。</li>
            <li>C语言以；表示一条语句的结束。</li>
            <li>程序就是由函数组成的，每个程序至少有一个函数，那就是主函数main。</li>
            <li>程序中还有一些编译预处理指令，用来在程序编译前组织代码。</li>
          </ul>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Clang">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Clangbasic">
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
