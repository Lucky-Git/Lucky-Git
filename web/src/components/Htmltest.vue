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
            <md-icon>chevron_right</md-icon>
            <span class="md-list-item-text">HTML测验</span>
          </md-list-item>
        </md-list>
      </md-app-drawer>
      <md-app-content>
        <div style="margin-top: 20px;margin-left: 15px">
          <span class="md-display-1">HTML测验</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==21" class="md-title">测验分数: {{score}}/20</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==1||clicknum==21" class="md-title">1.HTML 指的是?</span>
          <div v-if="clicknum==1">
            <md-radio v-model="radio" value="1">超文本标记语言（Hyper Text Markup Language）</md-radio>
            <md-radio v-model="radio" value="2">家庭工具标记语言（Home Tool Markup Language）</md-radio>
            <md-radio v-model="radio" value="3">超链接和文本标记语言（Hyperlinks and Text Markup Language）</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[0]==1" class="md-primary">超文本标记语言（Hyper Text Markup Language）</md-chip>
            <md-chip v-if="keys[0]==2" class="md-primary">家庭工具标记语言（Home Tool Markup Language）</md-chip>
            <md-chip v-if="keys[0]==3" class="md-primary">超链接和文本标记语言（Hyperlinks and Text Markup Language）</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[0]!=answer[0]">
            <md-chip v-if="answer[0]==1" class="md-accent">超文本标记语言（Hyper Text Markup Language）</md-chip>
            <md-chip v-if="answer[0]==2" class="md-accent">家庭工具标记语言（Home Tool Markup Language）</md-chip>
            <md-chip v-if="answer[0]==3" class="md-accent">超链接和文本标记语言（Hyperlinks and Text Markup Language）</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==2||clicknum==21" class="md-title">2.Web 标准的制定者是?</span>
          <div v-if="clicknum==2">
            <md-radio v-model="radio" value="1">微软（Microsoft）</md-radio>
            <md-radio v-model="radio" value="2">万维网联盟（W3C）</md-radio>
            <md-radio v-model="radio" value="3">网景公司（Netscape）</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[1]==1" class="md-primary">微软（Microsoft）</md-chip>
            <md-chip v-if="keys[1]==2" class="md-primary">万维网联盟（W3C）</md-chip>
            <md-chip v-if="keys[1]==3" class="md-primary">网景公司（Netscape）</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[1]!=answer[1]">
            <md-chip v-if="answer[1]==1" class="md-accent">微软（Microsoft）</md-chip>
            <md-chip v-if="answer[1]==2" class="md-accent">万维网联盟（W3C）</md-chip>
            <md-chip v-if="answer[1]==3" class="md-accent">网景公司（Netscape）</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==3||clicknum==21" class="md-title">3.在下列的 HTML 中, 哪个是最大的标题?</span>
          <div v-if="clicknum==3">
            <md-radio v-model="radio" value="1">&lt;head&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;heading&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;h1&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[2]==1" class="md-primary">&lt;head&gt;</md-chip>
            <md-chip v-if="keys[2]==2" class="md-primary">&lt;heading&gt;</md-chip>
            <md-chip v-if="keys[2]==3" class="md-primary">&lt;h1&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[2]!=answer[2]">
            <md-chip v-if="answer[2]==1" class="md-accent">&lt;head&gt;</md-chip>
            <md-chip v-if="answer[2]==2" class="md-accent">&lt;heading&gt;</md-chip>
            <md-chip v-if="answer[2]==3" class="md-accent">&lt;h1&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==4||clicknum==21" class="md-title">4.在下列的 HTML 中, 哪个可以插入折行?</span>
          <div v-if="clicknum==4">
            <md-radio v-model="radio" value="1">&lt;br&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;lb&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;break&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[3]==1" class="md-primary">&lt;br&gt;</md-chip>
            <md-chip v-if="keys[3]==2" class="md-primary">&lt;lb&gt;</md-chip>
            <md-chip v-if="keys[3]==3" class="md-primary">&lt;break&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[3]!=answer[3]">
            <md-chip v-if="answer[3]==1" class="md-accent">&lt;br&gt;</md-chip>
            <md-chip v-if="answer[3]==2" class="md-accent">&lt;lb&gt;</md-chip>
            <md-chip v-if="answer[3]==3" class="md-accent">&lt;break&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==5||clicknum==21" class="md-title">5.在下列的 HTML 中, 哪个可以添加背景颜色?</span>
          <div v-if="clicknum==5">
            <md-radio v-model="radio" value="1">&lt;body color="yellow"&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;background&gtyellow&lt;/background&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;body bgcolor="yellow"&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[4]==1" class="md-primary">&lt;body color="yellow"&gt;</md-chip>
            <md-chip v-if="keys[4]==2" class="md-primary">&lt;background&gtyellow&lt;/background&gt;</md-chip>
            <md-chip v-if="keys[4]==3" class="md-primary">&lt;body bgcolor="yellow"&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[4]!=answer[4]">
            <md-chip v-if="answer[4]==1" class="md-accent">&lt;body color="yellow"&gt;</md-chip>
            <md-chip v-if="answer[4]==2" class="md-accent">&lt;background&gtyellow&lt;/background&gt;</md-chip>
            <md-chip v-if="answer[4]==3" class="md-accent">&lt;body bgcolor="yellow"&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==6||clicknum==21" class="md-title">6.请选择产生粗体字的 HTML 标签: </span>
          <div v-if="clicknum==6">
            <md-radio v-model="radio" value="1">&lt;bb&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;b&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;bld&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[5]==1" class="md-primary">&lt;bb&gt;</md-chip>
            <md-chip v-if="keys[5]==2" class="md-primary">&lt;b&gt;</md-chip>
            <md-chip v-if="keys[5]==3" class="md-primary">&lt;bld&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[5]!=answer[5]">
            <md-chip v-if="answer[5]==1" class="md-accent">&lt;bb&gt;</md-chip>
            <md-chip v-if="answer[5]==2" class="md-accent">&lt;b&gt;</md-chip>
            <md-chip v-if="answer[5]==3" class="md-accent">&lt;bld&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==7||clicknum==21" class="md-title">7.请选择产生斜体字的 HTML 标签: </span>
          <div v-if="clicknum==7">
            <md-radio v-model="radio" value="1">&lt;i&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;italics&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;ii&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[6]==1" class="md-primary">&lt;i&gt;</md-chip>
            <md-chip v-if="keys[6]==2" class="md-primary">&lt;italics&gt;</md-chip>
            <md-chip v-if="keys[6]==3" class="md-primary">&lt;ii&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[6]!=answer[6]">
            <md-chip v-if="answer[6]==1" class="md-accent">&lt;i&gt;</md-chip>
            <md-chip v-if="answer[6]==2" class="md-accent">&lt;italics&gt;</md-chip>
            <md-chip v-if="answer[6]==3" class="md-accent">&lt;ii&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==8||clicknum==21" class="md-title">8.在下列的 HTML 中, 哪个可以产生超链接?</span>
          <div v-if="clicknum==8">
            <md-radio v-model="radio" value="1">&lt;a url="http://www.w3school.com.cn"&gtW3School.com.cn&lt;/a&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;a href="http://www.w3school.com.cn"&gtW3School&lt;/a&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;a&gthttp://www.w3school.com.cn&lt;/a&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[7]==1" class="md-primary">&lt;a url="http://www.w3school.com.cn"&gtW3School.com.cn&lt;/a&gt;</md-chip>
            <md-chip v-if="keys[7]==2" class="md-primary">&lt;a href="http://www.w3school.com.cn"&gtW3School&lt;/a&gt;</md-chip>
            <md-chip v-if="keys[7]==3" class="md-primary">&lt;a&gthttp://www.w3school.com.cn&lt;/a&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[7]!=answer[7]">
            <md-chip v-if="answer[7]==1" class="md-accent">&lt;a url="http://www.w3school.com.cn"&gtW3School.com.cn&lt;/a&gt;</md-chip>
            <md-chip v-if="answer[7]==2" class="md-accent">&lt;a href="http://www.w3school.com.cn"&gtW3School&lt;/a&gt;</md-chip>
            <md-chip v-if="answer[7]==3" class="md-accent">&lt;a&gthttp://www.w3school.com.cn&lt;/a&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==9||clicknum==21" class="md-title">9.如何制作电子邮件链接?</span>
          <div v-if="clicknum==9">
            <md-radio v-model="radio" value="1">&lt;a href="xxx@yyy"&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;mail href="xxx@yyy"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;a href="mailto:xxx@yyy"&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[8]==1" class="md-primary">&lt;a href="xxx@yyy"&gt;</md-chip>
            <md-chip v-if="keys[8]==2" class="md-primary">&lt;mail href="xxx@yyy"&gt;</md-chip>
            <md-chip v-if="keys[8]==3" class="md-primary">&lt;a href="mailto:xxx@yyy"&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[8]!=answer[8]">
            <md-chip v-if="answer[8]==1" class="md-accent">&lt;a href="xxx@yyy"&gt;</md-chip>
            <md-chip v-if="answer[8]==2" class="md-accent">&lt;mail href="xxx@yyy"&gt;</md-chip>
            <md-chip v-if="answer[8]==3" class="md-accent">&lt;a href="mailto:xxx@yyy"&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==10||clicknum==21" class="md-title">10.如何在新窗口打开链接?</span>
          <div v-if="clicknum==10">
            <md-radio v-model="radio" value="1">&lt;a href="url" new&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;a href="url" target="_self"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;a href="url" target="new"&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[9]==1" class="md-primary">&lt;a href="url" new&gt;</md-chip>
            <md-chip v-if="keys[9]==2" class="md-primary">&lt;a href="url" target="_self"&gt;</md-chip>
            <md-chip v-if="keys[9]==3" class="md-primary">&lt;a href="url" target="new"&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[9]!=answer[9]">
            <md-chip v-if="answer[9]==1" class="md-accent">&lt;a href="url" new&gt;</md-chip>
            <md-chip v-if="answer[9]==2" class="md-accent">&lt;a href="url" target="_self"&gt;</md-chip>
            <md-chip v-if="answer[9]==3" class="md-accent">&lt;a href="url" target="new"&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==11||clicknum==21" class="md-title">11.以下选项中, 哪个全部都是表格标签?</span>
          <div v-if="clicknum==11">
            <md-radio v-model="radio" value="1">&lt;table&gt;&lt;tr&gt;&lt;td&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;table&gt;&lt;tr&gt;&lt;tt&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;thead&gt;&lt;body&gt;&lt;tr&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[10]==1" class="md-primary">&lt;table&gt;&lt;tr&gt;&lt;td&gt;</md-chip>
            <md-chip v-if="keys[10]==2" class="md-primary">&lt;table&gt;&lt;tr&gt;&lt;tt&gt;</md-chip>
            <md-chip v-if="keys[10]==3" class="md-primary">&lt;thead&gt;&lt;body&gt;&lt;tr&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[10]!=answer[10]">
            <md-chip v-if="answer[10]==1" class="md-accent">&lt;table&gt;&lt;tr&gt;&lt;td&gt;</md-chip>
            <md-chip v-if="answer[10]==2" class="md-accent">&lt;table&gt;&lt;tr&gt;&lt;tt&gt;</md-chip>
            <md-chip v-if="answer[10]==3" class="md-accent">&lt;thead&gt;&lt;body&gt;&lt;tr&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==12||clicknum==21" class="md-title">12.请选择可以使单元格中的内容进行左对齐的正确 HTML 标签: </span>
          <div v-if="clicknum==12">
            <md-radio v-model="radio" value="1">&lt;td align="left"&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;td valign="left"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;td leftalign&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[11]==1" class="md-primary">&lt;td align="left"&gt;</md-chip>
            <md-chip v-if="keys[11]==2" class="md-primary">&lt;td valign="left"&gt;</md-chip>
            <md-chip v-if="keys[11]==3" class="md-primary">&lt;td leftalign&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[11]!=answer[11]">
            <md-chip v-if="answer[11]==1" class="md-accent">&lt;td align="left"&gt;</md-chip>
            <md-chip v-if="answer[11]==2" class="md-accent">&lt;td valign="left"&gt;</md-chip>
            <md-chip v-if="answer[11]==3" class="md-accent">&lt;td leftalign&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==13||clicknum==21" class="md-title">13.如何产生带有数字列表符号的列表?</span>
          <div v-if="clicknum==13">
            <md-radio v-model="radio" value="1">&lt;ul&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;dl&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;ol&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[12]==1" class="md-primary">&lt;ul&gt;</md-chip>
            <md-chip v-if="keys[12]==2" class="md-primary">&lt;dl&gt;</md-chip>
            <md-chip v-if="keys[12]==3" class="md-primary">&lt;ol&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[12]!=answer[12]">
            <md-chip v-if="answer[12]==1" class="md-accent">&lt;ul&gt;</md-chip>
            <md-chip v-if="answer[12]==2" class="md-accent">&lt;dl&gt;</md-chip>
            <md-chip v-if="answer[12]==3" class="md-accent">&lt;ol&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==14||clicknum==21" class="md-title">14.如何产生带有圆点列表符号的列表?</span>
          <div v-if="clicknum==14">
            <md-radio v-model="radio" value="1">&lt;list&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;ol&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;ul&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[13]==1" class="md-primary">&lt;list&gt;</md-chip>
            <md-chip v-if="keys[13]==2" class="md-primary">&lt;ol&gt;</md-chip>
            <md-chip v-if="keys[13]==3" class="md-primary">&lt;ul&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[13]!=answer[13]">
            <md-chip v-if="answer[13]==1" class="md-accent">&lt;list&gt;</md-chip>
            <md-chip v-if="answer[13]==2" class="md-accent">&lt;ol&gt;</md-chip>
            <md-chip v-if="answer[13]==3" class="md-accent">&lt;ul&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==15||clicknum==21" class="md-title">15.在下列的 HTML 中, 哪个可以产生复选框?</span>
          <div v-if="clicknum==15">
            <md-radio v-model="radio" value="1">&lt;checkbox&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;input type="checkbox"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;check&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[14]==1" class="md-primary">&lt;checkbox&gt;</md-chip>
            <md-chip v-if="keys[14]==2" class="md-primary">&lt;input type="checkbox"&gt;</md-chip>
            <md-chip v-if="keys[14]==3" class="md-primary">&lt;check&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[14]!=answer[14]">
            <md-chip v-if="answer[14]==1" class="md-accent">&lt;checkbox&gt;</md-chip>
            <md-chip v-if="answer[14]==2" class="md-accent">&lt;input type="checkbox"&gt;</md-chip>
            <md-chip v-if="answer[14]==3" class="md-accent">&lt;check&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==16||clicknum==21" class="md-title">16.在下列的 HTML 中, 哪个可以产生文本框?</span>
          <div v-if="clicknum==16">
            <md-radio v-model="radio" value="1">&lt;input type="textfield"&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;textinput type="text"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;input type="text"&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[15]==1" class="md-primary">&lt;input type="textfield"&gt;</md-chip>
            <md-chip v-if="keys[15]==2" class="md-primary">&lt;textinput type="text"&gt;</md-chip>
            <md-chip v-if="keys[15]==3" class="md-primary">&lt;input type="text"&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[15]!=answer[15]">
            <md-chip v-if="answer[15]==1" class="md-accent">&lt;input type="textfield"&gt;</md-chip>
            <md-chip v-if="answer[15]==2" class="md-accent">&lt;textinput type="text"&gt;</md-chip>
            <md-chip v-if="answer[15]==3" class="md-accent">&lt;input type="text"&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==17||clicknum==21" class="md-title">17.在下列的 HTML 中, 哪个可以产生下拉列表?</span>
          <div v-if="clicknum==17">
            <md-radio v-model="radio" value="1">&lt;input type="list"&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;input type="dropdown"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;select&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[16]==1" class="md-primary">&lt;input type="list"&gt;</md-chip>
            <md-chip v-if="keys[16]==2" class="md-primary">&lt;input type="dropdown"&gt;</md-chip>
            <md-chip v-if="keys[16]==3" class="md-primary">&lt;select&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[16]!=answer[16]">
            <md-chip v-if="answer[16]==1" class="md-accent">&lt;input type="list"&gt;</md-chip>
            <md-chip v-if="answer[16]==2" class="md-accent">&lt;input type="dropdown"&gt;</md-chip>
            <md-chip v-if="answer[16]==3" class="md-accent">&lt;select&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==18||clicknum==21" class="md-title">18.在下列的 HTML 中, 哪个可以产生文本区（textarea）?</span>
          <div v-if="clicknum==18">
            <md-radio v-model="radio" value="1">&lt;textarea&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;input type="textarea"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;input type="textbox"&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[17]==1" class="md-primary">&lt;textarea&gt;</md-chip>
            <md-chip v-if="keys[17]==2" class="md-primary">&lt;input type="textarea"&gt;</md-chip>
            <md-chip v-if="keys[17]==3" class="md-primary">&lt;input type="textbox"&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[17]!=answer[17]">
            <md-chip v-if="answer[17]==1" class="md-accent">&lt;textarea&gt;</md-chip>
            <md-chip v-if="answer[17]==2" class="md-accent">&lt;input type="textarea"&gt;</md-chip>
            <md-chip v-if="answer[17]==3" class="md-accent">&lt;input type="textbox"&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==19||clicknum==21" class="md-title">19.在下列的 HTML 中, 哪个可以插入图像?</span>
          <div v-if="clicknum==19">
            <md-radio v-model="radio" value="1">&lt;image src="image.gif"&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;img src="image.gif"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;img&gtimage.gif&lt;/img&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[18]==1" class="md-primary">&lt;image src="image.gif"&gt;</md-chip>
            <md-chip v-if="keys[18]==2" class="md-primary">&lt;img src="image.gif"&gt;</md-chip>
            <md-chip v-if="keys[18]==3" class="md-primary">&lt;img&gtimage.gif&lt;/img&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[18]!=answer[18]">
            <md-chip v-if="answer[18]==1" class="md-accent">&lt;image src="image.gif"&gt;</md-chip>
            <md-chip v-if="answer[18]==2" class="md-accent">&lt;img src="image.gif"&gt;</md-chip>
            <md-chip v-if="answer[18]==3" class="md-accent">&lt;img&gtimage.gif&lt;/img&gt;</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==20||clicknum==21" class="md-title">20.在下列的 HTML 中, 哪个可以插入背景图像?</span>
          <div v-if="clicknum==20">
            <md-radio v-model="radio" value="1">&lt;body background="background.gif"&gt;</md-radio>
            <md-radio v-model="radio" value="2">&lt;background img="background.gif"&gt;</md-radio>
            <md-radio v-model="radio" value="3">&lt;img src="background.gif" background&gt;</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[19]==1" class="md-primary">&lt;body background="background.gif"&gt;</md-chip>
            <md-chip v-if="keys[19]==2" class="md-primary">&lt;background img="background.gif"&gt;</md-chip>
            <md-chip v-if="keys[19]==3" class="md-primary">&lt;img src="background.gif" background&gt;</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[19]!=answer[19]">
            <md-chip v-if="answer[19]==1" class="md-accent">&lt;body background="background.gif"&gt;</md-chip>
            <md-chip v-if="answer[19]==2" class="md-accent">&lt;background img="background.gif"&gt;</md-chip>
            <md-chip v-if="answer[19]==3" class="md-accent">&lt;img src="background.gif" background&gt;</md-chip>
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
      keys: [1, 2, 3, 1, 3, 2, 1, 2, 3, 2, 1, 1, 3, 3, 2, 3, 3, 1, 2, 1],
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
