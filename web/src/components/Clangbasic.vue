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
          <md-list-item to="/Clang">
            <span class="md-list-item-text">C语言教程</span>
          </md-list-item>
          <md-list-item to="/Clangintro">
            <span class="md-list-item-text">C语言简介</span>
          </md-list-item>
          <md-list-item to="/Clangbasic">
            <md-icon>chevron_right</md-icon>
            <span class="md-list-item-text">C语言基础</span>
          </md-list-item>
          <md-list-item to="/Clangtestintro">
            <span class="md-list-item-text">C语言测验简介</span>
          </md-list-item>
          <md-list-item to="/Clangtest">
            <span class="md-list-item-text">C语言测验</span>
          </md-list-item>
        </md-list>
      </md-app-drawer>
      <md-app-content>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-display-1">C语言简介</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Clangintro">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Clangbasic">
            <md-button class="md-raised md-accent">下一节</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">C的数据类型</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">C是强类型语言, 任何一个量都有类型。数据的存储以字节（byte）为单位, 一字节是8位（二进制）。数据类型分为基本数据类型和非基本数据类型, 基本数据类型如下: </span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <ul>
            <li>bool型: 占用一个字节, 但表示的范围只有true和false(或者1和0), 用来表示逻辑的真与假。</li>
            <li>char型: 占用一个字节, 表示范围是-128~127, 用来存放一个字符。后面会介绍, 字符也都是以对应数值方式存储和计算的, 只是显示出来是字符而已。</li>
            <li>int型: 占用四个字节, 用来表示整数。bool型和字符型都是比较短的整形, 他们表示的都是整数, 只是表示范围不同而已。</li>
            <li>float型和double型: 用来表示浮点数, 即小数, 二者的区别在于精度和表示范围。计算浮点数表示范围的方法与整数不同。浮点数的表示范围取决于有多少位用于存放指数。</li>
            <li>void型: 是空类型。在学习函数和指针时, 会发现void型的特殊用途。</li>
          </ul>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <span class="md-subheading">C的非基本类型包括结构体、枚举、共同体、数组、指针、引用, 这些会在后面章节中介绍。</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">量</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">每个量都属于某种数据类型</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <ul>
            <li>常量: 常量就是不能改变的量。数据本身就是一种字面常量, 如+10, 2.5.基本类型的常量有逻辑型、整型、浮点型、字符型、字符串型。</li>
            <li>变量: 变量是用来存放数组且可以修改的量。一般情况下, 没有被初始化或赋值的变量是没有意义的值。变量只有在定义后才能使用。</li>
            <li>标识符的命名规则: 变量名、常量名以及后面将要介绍的结构体名、类名、函数名、命名空间名等通称为标识符。标识符的选取需满足下面条件: 只能包含52个英文字母、阿拉伯数字和下划线“_”,且只能以英文字母或下划线开头。</li>
          </ul>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <table border="1">
            <caption>保留字（关键字）</caption>
            <tr>
              <td>auto</td>
              <td>break</td>
              <td>case</td>
              <td>char</td>
              <td>const</td>
              <td>continue</td>
            </tr>
            <tr>
              <td>default</td>
              <td>do</td>
              <td>double</td>
              <td>else</td>
              <td>enum</td>
              <td>extern</td>
            </tr>
            <tr>
              <td>float</td>
              <td>for</td>
              <td>goto</td>
              <td>if</td>
              <td>int</td>
              <td>long</td>
            </tr>
            <tr>
              <td>register</td>
              <td>return</td>
              <td>short</td>
              <td>signed</td>
              <td>sizeof</td>
              <td>static</td>
            </tr>
            <tr>
              <td>struct</td>
              <td>switch</td>
              <td>typedef</td>
              <td>union</td>
              <td>unsigned</td>
              <td>void</td>
            </tr>
            <tr>
              <td>volatile</td>
              <td>while</td>
              <td>bool</td>
              <td>false</td>
              <td>inline</td>
              <td>true</td>
            </tr>
          </table>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <span class="md-subheading">C严格区分大小写, a和A, TEMP和tEMP是不同的标识符, 并不冲突。</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">输入和输出</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-subheading">printf和scanf是C中标准输入输出函数。</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-body-2">printf函数</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-body-1">一般格式</span>
          <ul>
            <li>int a=10,b=3;</li>
            <li>printf("%d,%d",a,b);</li>
          </ul>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <table border="1">
            <caption>格式符</caption>
            <tr>
              <th>%d</th>
              <td>十进制整型</td>
            </tr>
            <tr>
              <th>%i</th>
              <td>十进制整数</td>
            </tr>
            <tr>
              <th>%o和%x(或%X)</th>
              <td>分别为八进制或十六进制整型</td>
            </tr>
            <tr>
              <th>%u</th>
              <td>无符号十进制整型</td>
            </tr>
            <tr>
              <th>%c</th>
              <td>字符型</td>
            </tr>
            <tr>
              <th>%l</th>
              <td>长整型</td>
            </tr>
            <tr>
              <th>%ll</th>
              <td>长长整型</td>
            </tr>
            <tr>
              <th>%s</th>
              <td>字符串</td>
            </tr>
            <tr>
              <th>%f</th>
              <td>浮点型</td>
            </tr>
            <tr>
              <th>%e</th>
              <td>指数型</td>
            </tr>
            <tr>
              <th>%g</th>
              <td>自动选择f和e形式</td>
            </tr>
          </table>
          <span class="md-body-1">如果需要输出“%”, 则写为“%%”。</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-body-2">scanf函数</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-body-1">一般格式</span>
          <ul>
            <li>int a;</li>
            <li>float b;</li>
            <li>scanf("%d %f",&a,&b);</li>
          </ul>
          <span class="md-body-1">输入1 2.1, 或者输入1回车2.1</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <span class="md-body-1">即如果两个操作符间用“, ”隔开, 则输入必须用“, ”隔开; 如果用空格键隔开, 则输入时可用空格或回车隔开。另外要注意, 不要将两格式符写为下面形式（字符型除外）: scanf("%d%f",&a,&b);</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <span class="md-subheading">如果要输入和输出字符串, 除scanf和printf外, 还可以调用gets和puts.</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Clangintro">
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
  name: 'Clangbasic',
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
