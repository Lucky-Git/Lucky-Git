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
            <span class="md-list-item-text">C语言基础</span>
          </md-list-item>
          <md-list-item to="/Clangtestintro">
            <span class="md-list-item-text">C语言测验简介</span>
          </md-list-item>
          <md-list-item to="/Clangtest">
            <md-icon>chevron_right</md-icon>
            <span class="md-list-item-text">C语言测验</span>
          </md-list-item>
        </md-list>
      </md-app-drawer>
      <md-app-content>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-display-1">C语言测验</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==21" class="md-title">测验分数: {{score}}/20</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==1||clicknum==21" class="md-title">1.构成C语言程序的基本单位是</span>
          <div v-if="clicknum==1">
            <md-radio v-model="radio" value="1">函数</md-radio>
            <md-radio v-model="radio" value="2">过程</md-radio>
            <md-radio v-model="radio" value="3">子程序</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[0]==1" class="md-primary">函数</md-chip>
            <md-chip v-if="keys[0]==2" class="md-primary">过程</md-chip>
            <md-chip v-if="keys[0]==3" class="md-primary">子程序</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[0]!=answer[0]">
            <md-chip v-if="answer[0]==1" class="md-accent">函数</md-chip>
            <md-chip v-if="answer[0]==2" class="md-accent">过程</md-chip>
            <md-chip v-if="answer[0]==3" class="md-accent">子程序</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==2||clicknum==21" class="md-title">2.C语言程序从()开始执行</span>
          <div v-if="clicknum==2">
            <md-radio v-model="radio" value="1">程序中第一条可执行语句 </md-radio>
            <md-radio v-model="radio" value="2">程序中第一个函数</md-radio>
            <md-radio v-model="radio" value="3">程序中的main函数</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[1]==1" class="md-primary">程序中第一条可执行语句 </md-chip>
            <md-chip v-if="keys[1]==2" class="md-primary">程序中第一个函数</md-chip>
            <md-chip v-if="keys[1]==3" class="md-primary">程序中的main函数</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[1]!=answer[1]">
            <md-chip v-if="answer[1]==1" class="md-accent">程序中第一条可执行语句 </md-chip>
            <md-chip v-if="answer[1]==2" class="md-accent">程序中第一个函数</md-chip>
            <md-chip v-if="answer[1]==3" class="md-accent">程序中的main函数</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==3||clicknum==21" class="md-title">3.以下说法中正确的是</span>
          <div v-if="clicknum==3">
            <md-radio v-model="radio" value="1">C语言程序总是从第一个定义的函数开始执行</md-radio>
            <md-radio v-model="radio" value="2">在C语言程序中, 要调用的函数必须在main( )函数中定义</md-radio>
            <md-radio v-model="radio" value="3">C语言程序总是从main( )函数开始执行</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[2]==1" class="md-primary">C语言程序总是从第一个定义的函数开始执行</md-chip>
            <md-chip v-if="keys[2]==2" class="md-primary">在C语言程序中, 要调用的函数必须在main( )函数中定义</md-chip>
            <md-chip v-if="keys[2]==3" class="md-primary">C语言程序总是从main( )函数开始执行</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[2]!=answer[2]">
            <md-chip v-if="answer[2]==1" class="md-accent">C语言程序总是从第一个定义的函数开始执行</md-chip>
            <md-chip v-if="answer[2]==2" class="md-accent">在C语言程序中, 要调用的函数必须在main( )函数中定义</md-chip>
            <md-chip v-if="answer[2]==3" class="md-accent">C语言程序总是从main( )函数开始执行</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==4||clicknum==21" class="md-title">4.下列关于C语言的说法错误的是</span>
          <div v-if="clicknum==4">
            <md-radio v-model="radio" value="1">C程序的工作过程是编辑、编译、连接、运行 </md-radio>
            <md-radio v-model="radio" value="2">C语言不区分大小写</md-radio>
            <md-radio v-model="radio" value="3">C程序的三种基本结构是顺序、选择、循环</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[3]==1" class="md-primary">C程序的工作过程是编辑、编译、连接、运行 </md-chip>
            <md-chip v-if="keys[3]==2" class="md-primary">C语言不区分大小写</md-chip>
            <md-chip v-if="keys[3]==3" class="md-primary">C程序的三种基本结构是顺序、选择、循环</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[3]!=answer[3]">
            <md-chip v-if="answer[3]==1" class="md-accent">C程序的工作过程是编辑、编译、连接、运行 </md-chip>
            <md-chip v-if="answer[3]==2" class="md-accent">C语言不区分大小写</md-chip>
            <md-chip v-if="answer[3]==3" class="md-accent">C程序的三种基本结构是顺序、选择、循环</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==5||clicknum==21" class="md-title">5.下列正确的标识符是</span>
          <div v-if="clicknum==5">
            <md-radio v-model="radio" value="1">-a1</md-radio>
            <md-radio v-model="radio" value="2">a[i]</md-radio>
            <md-radio v-model="radio" value="3">a2_i</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[4]==1" class="md-primary">-a1</md-chip>
            <md-chip v-if="keys[4]==2" class="md-primary">a[i]</md-chip>
            <md-chip v-if="keys[4]==3" class="md-primary">a2_i</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[4]!=answer[4]">
            <md-chip v-if="answer[4]==1" class="md-accent">-a1</md-chip>
            <md-chip v-if="answer[4]==2" class="md-accent">a[i]</md-chip>
            <md-chip v-if="answer[4]==3" class="md-accent">a2_i</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==6||clicknum==21" class="md-title">6.下列C语言用户标识符中合法的是</span>
          <div v-if="clicknum==6">
            <md-radio v-model="radio" value="1">3ax</md-radio>
            <md-radio v-model="radio" value="2">x</md-radio>
            <md-radio v-model="radio" value="3">case</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[5]==1" class="md-primary">3ax</md-chip>
            <md-chip v-if="keys[5]==2" class="md-primary">x</md-chip>
            <md-chip v-if="keys[5]==3" class="md-primary">case</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[5]!=answer[5]">
            <md-chip v-if="answer[5]==1" class="md-accent">3ax;</md-chip>
            <md-chip v-if="answer[5]==2" class="md-accent">x</md-chip>
            <md-chip v-if="answer[5]==3" class="md-accent">case</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==7||clicknum==21" class="md-title">7.下列四组选项中, 正确的C语言标识符是: </span>
          <div v-if="clicknum==7">
            <md-radio v-model="radio" value="1">%x</md-radio>
            <md-radio v-model="radio" value="2">a+b</md-radio>
            <md-radio v-model="radio" value="3">a123</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[6]==1" class="md-primary">%x</md-chip>
            <md-chip v-if="keys[6]==2" class="md-primary">a+b</md-chip>
            <md-chip v-if="keys[6]==3" class="md-primary">a123</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[6]!=answer[6]">
            <md-chip v-if="answer[6]==1" class="md-accent">%x</md-chip>
            <md-chip v-if="answer[6]==2" class="md-accent">a+b</md-chip>
            <md-chip v-if="answer[6]==3" class="md-accent">a123</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==8||clicknum==21" class="md-title">8.下列四组字符串中都可以用作C语言程序中的标识符的是</span>
          <div v-if="clicknum==8">
            <md-radio v-model="radio" value="1">print&nbsp;&nbsp;&nbsp;&nbsp;_3d&nbsp;&nbsp;&nbsp;&nbsp; db8&nbsp;&nbsp;&nbsp;&nbsp; aBc</md-radio>
            <md-radio v-model="radio" value="2">I\\am&nbsp;&nbsp;&nbsp;&nbsp; one_half&nbsp;&nbsp;&nbsp;&nbsp; start$it&nbsp;&nbsp;&nbsp;&nbsp; 3pai</md-radio>
            <md-radio v-model="radio" value="3">str_1&nbsp;&nbsp;&nbsp;&nbsp; Cpp&nbsp;&nbsp;&nbsp;&nbsp; pow&nbsp;&nbsp;&nbsp;&nbsp; while</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[7]==1" class="md-primary">print&nbsp;&nbsp;&nbsp;&nbsp;_3d&nbsp;&nbsp;&nbsp;&nbsp; db8&nbsp;&nbsp;&nbsp;&nbsp; aBc</md-chip>
            <md-chip v-if="keys[7]==2" class="md-primary">I\\am&nbsp;&nbsp;&nbsp;&nbsp; one_half&nbsp;&nbsp;&nbsp;&nbsp; start$it&nbsp;&nbsp;&nbsp;&nbsp; 3pai</md-chip>
            <md-chip v-if="keys[7]==3" class="md-primary">str_1&nbsp;&nbsp;&nbsp;&nbsp; Cpp&nbsp;&nbsp;&nbsp;&nbsp; pow&nbsp;&nbsp;&nbsp;&nbsp; while</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[7]!=answer[7]">
            <md-chip v-if="answer[7]==1" class="md-accent">print&nbsp;&nbsp;&nbsp;&nbsp;_3d&nbsp;&nbsp;&nbsp;&nbsp; db8&nbsp;&nbsp;&nbsp;&nbsp; aBc</md-chip>
            <md-chip v-if="answer[7]==2" class="md-accent">I\\am&nbsp;&nbsp;&nbsp;&nbsp; one_half&nbsp;&nbsp;&nbsp;&nbsp; start$it&nbsp;&nbsp;&nbsp;&nbsp; 3pai</md-chip>
            <md-chip v-if="answer[7]==3" class="md-accent">str_1&nbsp;&nbsp;&nbsp;&nbsp; Cpp&nbsp;&nbsp;&nbsp;&nbsp; pow&nbsp;&nbsp;&nbsp;&nbsp; while</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==9||clicknum==21" class="md-title">9.C语言中的简单数据类型包括</span>
          <div v-if="clicknum==9">
            <md-radio v-model="radio" value="1">整型、实型、逻辑型、字符型</md-radio>
            <md-radio v-model="radio" value="2">整型、字符型、逻辑型</md-radio>
            <md-radio v-model="radio" value="3">整型、实型、字符型</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[8]==1" class="md-primary">整型、实型、逻辑型、字符型</md-chip>
            <md-chip v-if="keys[8]==2" class="md-primary">整型、字符型、逻辑型</md-chip>
            <md-chip v-if="keys[8]==3" class="md-primary">整型、实型、字符型</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[8]!=answer[8]">
            <md-chip v-if="answer[8]==1" class="md-accent">整型、实型、逻辑型、字符型</md-chip>
            <md-chip v-if="answer[8]==2" class="md-accent">整型、字符型、逻辑型</md-chip>
            <md-chip v-if="answer[8]==3" class="md-accent">整型、实型、字符型</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==10||clicknum==21" class="md-title">10.在C语言程序中, 表达式5%2的结果是</span>
          <div v-if="clicknum==10">
            <md-radio v-model="radio" value="1">2.5</md-radio>
            <md-radio v-model="radio" value="2">2</md-radio>
            <md-radio v-model="radio" value="3">1</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[9]==1" class="md-primary">2.5</md-chip>
            <md-chip v-if="keys[9]==2" class="md-primary">2</md-chip>
            <md-chip v-if="keys[9]==3" class="md-primary">1</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[9]!=answer[9]">
            <md-chip v-if="answer[9]==1" class="md-accent">2.5</md-chip>
            <md-chip v-if="answer[9]==2" class="md-accent">2</md-chip>
            <md-chip v-if="answer[9]==3" class="md-accent">1</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==11||clicknum==21" class="md-title">11.C语言中, 关系表达式和逻辑表达式的值是</span>
          <div v-if="clicknum==11">
            <md-radio v-model="radio" value="1">0</md-radio>
            <md-radio v-model="radio" value="2">0或1</md-radio>
            <md-radio v-model="radio" value="3">1</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[10]==1" class="md-primary">0</md-chip>
            <md-chip v-if="keys[10]==2" class="md-primary">0或1</md-chip>
            <md-chip v-if="keys[10]==3" class="md-primary">1</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[10]!=answer[10]">
            <md-chip v-if="answer[10]==1" class="md-accent">0</md-chip>
            <md-chip v-if="answer[10]==2" class="md-accent">0或1</md-chip>
            <md-chip v-if="answer[10]==3" class="md-accent">1</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==12||clicknum==21" class="md-title">12.下面()表达式的值为4</span>
          <div v-if="clicknum==12">
            <md-radio v-model="radio" value="1">11.0/3</md-radio>
            <md-radio v-model="radio" value="2">(float)11/3</md-radio>
            <md-radio v-model="radio" value="3">(int)(11.0/3+0.5)</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[11]==1" class="md-primary">11.0/3</md-chip>
            <md-chip v-if="keys[11]==2" class="md-primary">(float)11/3</md-chip>
            <md-chip v-if="keys[11]==3" class="md-primary">(int)(11.0/3+0.5)</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[11]!=answer[11]">
            <md-chip v-if="answer[11]==1" class="md-accent">11.0/3</md-chip>
            <md-chip v-if="answer[11]==2" class="md-accent">(float)11/3</md-chip>
            <md-chip v-if="answer[11]==3" class="md-accent">(int)(11.0/3+0.5)</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==13||clicknum==21" class="md-title">13.设整型变量 a=2, 则执行下列语句后, 浮点型变量b的值不为0.5的是</span>
          <div v-if="clicknum==13">
            <md-radio v-model="radio" value="1">b=1.0/a</md-radio>
            <md-radio v-model="radio" value="2">b=(float)(1/a)</md-radio>
            <md-radio v-model="radio" value="3">b=1/(float)a</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[12]==1" class="md-primary">b=1.0/a</md-chip>
            <md-chip v-if="keys[12]==2" class="md-primary">b=(float)(1/a)</md-chip>
            <md-chip v-if="keys[12]==3" class="md-primary">b=1/(float)a</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[12]!=answer[12]">
            <md-chip v-if="answer[12]==1" class="md-accent">b=1.0/a</md-chip>
            <md-chip v-if="answer[12]==2" class="md-accent">b=(float)(1/a)</md-chip>
            <md-chip v-if="answer[12]==3" class="md-accent">b=1/(float)a</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==14||clicknum==21" class="md-title">14.若“int n; float f=13.8;”,则执行“n=(int)f%3”后, n的值是</span>
          <div v-if="clicknum==14">
            <md-radio v-model="radio" value="1">1</md-radio>
            <md-radio v-model="radio" value="2">4</md-radio>
            <md-radio v-model="radio" value="3">4.333333</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[13]==1" class="md-primary">1</md-chip>
            <md-chip v-if="keys[13]==2" class="md-primary">4</md-chip>
            <md-chip v-if="keys[13]==3" class="md-primary">4.333333</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[13]!=answer[13]">
            <md-chip v-if="answer[13]==1" class="md-accent">1</md-chip>
            <md-chip v-if="answer[13]==2" class="md-accent">4</md-chip>
            <md-chip v-if="answer[13]==3" class="md-accent">4.333333</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==15||clicknum==21" class="md-title">15.以下对一维数组a的正确说明是</span>
          <div v-if="clicknum==15">
            <md-radio v-model="radio" value="1">int a[]; </md-radio>
            <md-radio v-model="radio" value="2">int k＝5, a[k]; </md-radio>
            <md-radio v-model="radio" value="3">char a[3]={‘a’,’b’,’c’};</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[14]==1" class="md-primary">int a[]; </md-chip>
            <md-chip v-if="keys[14]==2" class="md-primary">int k＝5, a[k]; </md-chip>
            <md-chip v-if="keys[14]==3" class="md-primary">char a[3]={‘a’,’b’,’c’};</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[14]!=answer[14]">
            <md-chip v-if="answer[14]==1" class="md-accent">int a[]; </md-chip>
            <md-chip v-if="answer[14]==2" class="md-accent">int k＝5, a[k]; </md-chip>
            <md-chip v-if="answer[14]==3" class="md-accent">char a[3]={‘a’,’b’,’c’};</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==16||clicknum==21" class="md-title">16.以下能对一维数组a进行初始化的语句是</span>
          <div v-if="clicknum==16">
            <md-radio v-model="radio" value="1">int a[5]=(0,1,2,3,4,)</md-radio>
            <md-radio v-model="radio" value="2">int a(5)={}</md-radio>
            <md-radio v-model="radio" value="3">int a[3]={0,1,2}</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[15]==1" class="md-primary">int a[5]=(0,1,2,3,4,)</md-chip>
            <md-chip v-if="keys[15]==2" class="md-primary">int a(5)={}</md-chip>
            <md-chip v-if="keys[15]==3" class="md-primary">int a[3]={0,1,2}</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[15]!=answer[15]">
            <md-chip v-if="answer[15]==1" class="md-accent">int a[5]=(0,1,2,3,4,)</md-chip>
            <md-chip v-if="answer[15]==2" class="md-accent">int a(5)={}</md-chip>
            <md-chip v-if="answer[15]==3" class="md-accent">int a[3]={0,1,2}</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==17||clicknum==21" class="md-title">17.在C语言中对一维整型数组的正确定义为</span>
          <div v-if="clicknum==17">
            <md-radio v-model="radio" value="1">int n=10,a[n]; </md-radio>
            <md-radio v-model="radio" value="2">int n;a[n];</md-radio>
            <md-radio v-model="radio" value="3">#define N 10
              <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int a[N];</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[16]==1" class="md-primary">int n=10,a[n]; </md-chip>
            <md-chip v-if="keys[16]==2" class="md-primary">int n;a[n];</md-chip>
            <md-chip v-if="keys[16]==3" class="md-primary">#define N 10
              <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int a[N];</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[16]!=answer[16]">
            <md-chip v-if="answer[16]==1" class="md-accent">int n=10,a[n]; </md-chip>
            <md-chip v-if="answer[16]==2" class="md-accent">int n;a[n];</md-chip>
            <md-chip v-if="answer[16]==3" class="md-accent">#define N 10
              <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int a[N];</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==18||clicknum==21" class="md-title">18.已知: int  a[10]; 则对a数组元素的正确引用是</span>
          <div v-if="clicknum==18">
            <md-radio v-model="radio" value="1">a[3.5]</md-radio>
            <md-radio v-model="radio" value="2">a(5)</md-radio>
            <md-radio v-model="radio" value="3">a[0]</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[17]==1" class="md-primary">a[3.5]</md-chip>
            <md-chip v-if="keys[17]==2" class="md-primary">a(5)</md-chip>
            <md-chip v-if="keys[17]==3" class="md-primary">a[0]</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[17]!=answer[17]">
            <md-chip v-if="answer[17]==1" class="md-accent">a[3.5]</md-chip>
            <md-chip v-if="answer[17]==2" class="md-accent">a(5)</md-chip>
            <md-chip v-if="answer[17]==3" class="md-accent">a[0]</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==19||clicknum==21" class="md-title">19.若有以下数组说明, 则i=10;a[a[i]]元素数值是</span>
          <div v-if="clicknum==19">
            <md-radio v-model="radio" value="1">10</md-radio>
            <md-radio v-model="radio" value="2">9</md-radio>
            <md-radio v-model="radio" value="3">6</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[18]==1" class="md-primary">10</md-chip>
            <md-chip v-if="keys[18]==2" class="md-primary">9</md-chip>
            <md-chip v-if="keys[18]==3" class="md-primary">6</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[18]!=answer[18]">
            <md-chip v-if="answer[18]==1" class="md-accent">10</md-chip>
            <md-chip v-if="answer[18]==2" class="md-accent">9</md-chip>
            <md-chip v-if="answer[18]==3" class="md-accent">6</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==20||clicknum==21" class="md-title">20.若有说明: int a[][3]={/{1,2,3},{4,5},{6,7}/}; 则数组a的第一维的大小为: </span>
          <div v-if="clicknum==20">
            <md-radio v-model="radio" value="1">2</md-radio>
            <md-radio v-model="radio" value="2">3</md-radio>
            <md-radio v-model="radio" value="3">4</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[19]==1" class="md-primary">2</md-chip>
            <md-chip v-if="keys[19]==2" class="md-primary">3</md-chip>
            <md-chip v-if="keys[19]==3" class="md-primary">4</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[19]!=answer[19]">
            <md-chip v-if="answer[19]==1" class="md-accent">2</md-chip>
            <md-chip v-if="answer[19]==2" class="md-accent">3</md-chip>
            <md-chip v-if="answer[19]==3" class="md-accent">4</md-chip>
          </div>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <md-button v-if="clicknum<=20" class="md-raised md-accent" v-on:click="next">下一题</md-button>
        </div>
      </md-app-content>
    </md-app>
    <md-snackbar :md-position="'center'" :md-duration="4000" :md-active.sync="showSnackbar" md-persistent>
      <span>请选择答案!</span>
      <md-button class="md-primary" @click="showSnackbar = false">知道了</md-button>
    </md-snackbar>
  </div>
</template>
<!-- script -->
<script>
export default {
  name: 'Htmltest',
  data() {
    return {
      showSnackbar: false,
      clicknum: 1,
      radio: 0,
      answer: [],
      keys: [1, 3, 3, 2, 3, 2, 3, 1, 3, 3, 2, 3, 2, 1, 3, 3, 3, 3, 3, 2],
      score: 0
    }
  },
  methods: {
    next() {
      if (this.radio == 0) {
        this.showSnackbar = true;
      } else {
        this.answer.push(this.radio);
        this.clicknum += 1;
        this.radio = 0;
      }
      if (this.clicknum == 21) {
        for (var i = this.answer.length - 1; i >= 0; i--) {
          if (this.answer[i] == this.keys[i]) {
            this.score += 1
          }
        }
      }
    }
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
