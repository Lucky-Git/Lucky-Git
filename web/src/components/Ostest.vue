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
          <span class="md-display-1">操作系统测验</span>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==21" class="md-title">测验分数: {{score}}/20</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==1||clicknum==21" class="md-title">1.()不是基本的操作系统</span>
          <div v-if="clicknum==1">
            <md-radio v-model="radio" value="1">分时操作系统</md-radio>
            <md-radio v-model="radio" value="2">实时操作系统</md-radio>
            <md-radio v-model="radio" value="3">网络操作系统</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[0]==1" class="md-primary">分时操作系统</md-chip>
            <md-chip v-if="keys[0]==2" class="md-primary">实时操作系统</md-chip>
            <md-chip v-if="keys[0]==3" class="md-primary">网络操作系统</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[0]!=answer[0]">
            <md-chip v-if="answer[0]==1" class="md-accent">分时操作系统</md-chip>
            <md-chip v-if="answer[0]==2" class="md-accent">实时操作系统</md-chip>
            <md-chip v-if="answer[0]==3" class="md-accent">网络操作系统</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==2||clicknum==21" class="md-title">2.()不是分时系统的基本特征</span>
          <div v-if="clicknum==2">
            <md-radio v-model="radio" value="1">同时性</md-radio>
            <md-radio v-model="radio" value="2">独立性</md-radio>
            <md-radio v-model="radio" value="3">实时性</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[1]==1" class="md-primary">同时性</md-chip>
            <md-chip v-if="keys[1]==2" class="md-primary">独立性</md-chip>
            <md-chip v-if="keys[1]==3" class="md-primary">实时性</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[1]!=answer[1]">
            <md-chip v-if="answer[1]==1" class="md-accent">同时性</md-chip>
            <md-chip v-if="answer[1]==2" class="md-accent">独立性</md-chip>
            <md-chip v-if="answer[1]==3" class="md-accent">实时性</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==3||clicknum==21" class="md-title">3.处理器执行的指令被分成两类，其中有一类称为特权指令，它只允许（）使用</span>
          <div v-if="clicknum==3">
            <md-radio v-model="radio" value="1">操作员</md-radio>
            <md-radio v-model="radio" value="2">联机用户</md-radio>
            <md-radio v-model="radio" value="3">操作系统</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[2]==1" class="md-primary">操作员</md-chip>
            <md-chip v-if="keys[2]==2" class="md-primary">联机用户</md-chip>
            <md-chip v-if="keys[2]==3" class="md-primary">操作系统</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[2]!=answer[2]">
            <md-chip v-if="answer[2]==1" class="md-accent">操作员</md-chip>
            <md-chip v-if="answer[2]==2" class="md-accent">联机用户</md-chip>
            <md-chip v-if="answer[2]==3" class="md-accent">操作系统</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==4||clicknum==21" class="md-title">4.当用户程序执行访管指令时，中断装置将使中央处理器（）工作</span>
          <div v-if="clicknum==4">
            <md-radio v-model="radio" value="1">维持在目态</md-radio>
            <md-radio v-model="radio" value="2">从目态转换到管态</md-radio>
            <md-radio v-model="radio" value="3">维持在管态</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[3]==1" class="md-primary">维持在目态</md-chip>
            <md-chip v-if="keys[3]==2" class="md-primary">从目态转换到管态</md-chip>
            <md-chip v-if="keys[3]==3" class="md-primary">维持在管态</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[3]!=answer[3]">
            <md-chip v-if="answer[3]==1" class="md-accent">维持在目态</md-chip>
            <md-chip v-if="answer[3]==2" class="md-accent">从目态转换到管态</md-chip>
            <md-chip v-if="answer[3]==3" class="md-accent">维持在管态</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==5||clicknum==21" class="md-title">5.进程所请求的一次打印输出结束后，将使进程状态从</span>
          <div v-if="clicknum==5">
            <md-radio v-model="radio" value="1">运行态变为等待态</md-radio>
            <md-radio v-model="radio" value="2">就绪态变为运行态</md-radio>
            <md-radio v-model="radio" value="3">等待态变为就绪态</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[4]==1" class="md-primary">运行态变为等待态</md-chip>
            <md-chip v-if="keys[4]==2" class="md-primary">就绪态变为运行态</md-chip>
            <md-chip v-if="keys[4]==3" class="md-primary">等待态变为就绪态</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[4]!=answer[4]">
            <md-chip v-if="answer[4]==1" class="md-accent">运行态变为等待态</md-chip>
            <md-chip v-if="answer[4]==2" class="md-accent">就绪态变为运行态</md-chip>
            <md-chip v-if="answer[4]==3" class="md-accent">等待态变为就绪态</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==6||clicknum==21" class="md-title">6.采用动态重定位方式装入的作业，在执行中允许（）将其移动</span>
          <div v-if="clicknum==6">
            <md-radio v-model="radio" value="1">用户有条件地</md-radio>
            <md-radio v-model="radio" value="2">用户无条件地</md-radio>
            <md-radio v-model="radio" value="3">操作系统有条件地</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[5]==1" class="md-primary">用户有条件地</md-chip>
            <md-chip v-if="keys[5]==2" class="md-primary">用户无条件地</md-chip>
            <md-chip v-if="keys[5]==3" class="md-primary">操作系统有条件地</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[5]!=answer[5]">
            <md-chip v-if="answer[5]==1" class="md-accent">用户有条件地;</md-chip>
            <md-chip v-if="answer[5]==2" class="md-accent">用户无条件地</md-chip>
            <md-chip v-if="answer[5]==3" class="md-accent">操作系统有条件地</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==7||clicknum==21" class="md-title">7.分页式存储管理中，地址转换工作是由（）完成的</span>
          <div v-if="clicknum==7">
            <md-radio v-model="radio" value="1">硬件</md-radio>
            <md-radio v-model="radio" value="2">地址转换程序</md-radio>
            <md-radio v-model="radio" value="3">用户程序</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[6]==1" class="md-primary">硬件</md-chip>
            <md-chip v-if="keys[6]==2" class="md-primary">地址转换程序</md-chip>
            <md-chip v-if="keys[6]==3" class="md-primary">用户程序</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[6]!=answer[6]">
            <md-chip v-if="answer[6]==1" class="md-accent">硬件</md-chip>
            <md-chip v-if="answer[6]==2" class="md-accent">地址转换程序</md-chip>
            <md-chip v-if="answer[6]==3" class="md-accent">用户程序</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==8||clicknum==21" class="md-title">8.如果允许不同用户的文件可以具有相同的文件名，通常采用（）来保证按名存取的安全是</span>
          <div v-if="clicknum==8">
            <md-radio v-model="radio" value="1">建立索引表</md-radio>
            <md-radio v-model="radio" value="2">建立指针</md-radio>
            <md-radio v-model="radio" value="3">多级目录结构</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[7]==1" class="md-primary">建立索引表</md-chip>
            <md-chip v-if="keys[7]==2" class="md-primary">建立指针</md-chip>
            <md-chip v-if="keys[7]==3" class="md-primary">多级目录结构</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[7]!=answer[7]">
            <md-chip v-if="answer[7]==1" class="md-accent">建立索引表</md-chip>
            <md-chip v-if="answer[7]==2" class="md-accent">建立指针</md-chip>
            <md-chip v-if="answer[7]==3" class="md-accent">多级目录结构</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==9||clicknum==21" class="md-title">9.对记录式文件，操作系统为用户存取文件信息的最小单位是()</span>
          <div v-if="clicknum==9">
            <md-radio v-model="radio" value="1">字符</md-radio>
            <md-radio v-model="radio" value="2">数据项</md-radio>
            <md-radio v-model="radio" value="3">记录</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[8]==1" class="md-primary">字符</md-chip>
            <md-chip v-if="keys[8]==2" class="md-primary">数据项</md-chip>
            <md-chip v-if="keys[8]==3" class="md-primary">记录</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[8]!=answer[8]">
            <md-chip v-if="answer[8]==1" class="md-accent">字符</md-chip>
            <md-chip v-if="answer[8]==2" class="md-accent">数据项</md-chip>
            <md-chip v-if="answer[8]==3" class="md-accent">记录</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==10||clicknum==21" class="md-title">10.为了提高设备分配的灵活性，用户申请设备时应指定（）号</span>
          <div v-if="clicknum==10">
            <md-radio v-model="radio" value="1">设备类相对</md-radio>
            <md-radio v-model="radio" value="2">设备类绝对</md-radio>
            <md-radio v-model="radio" value="3">相对</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[9]==1" class="md-primary">设备类相对</md-chip>
            <md-chip v-if="keys[9]==2" class="md-primary">设备类绝对</md-chip>
            <md-chip v-if="keys[9]==3" class="md-primary">相对</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[9]!=answer[9]">
            <md-chip v-if="answer[9]==1" class="md-accent">设备类相对</md-chip>
            <md-chip v-if="answer[9]==2" class="md-accent">设备类绝对</md-chip>
            <md-chip v-if="answer[9]==3" class="md-accent">相对</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==11||clicknum==21" class="md-title">11.C通常把通道程序的执行情况记录在（）中</span>
          <div v-if="clicknum==11">
            <md-radio v-model="radio" value="1">PCB</md-radio>
            <md-radio v-model="radio" value="2">CAW</md-radio>
            <md-radio v-model="radio" value="3">CSW</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[10]==1" class="md-primary">PCB</md-chip>
            <md-chip v-if="keys[10]==2" class="md-primary">CAW</md-chip>
            <md-chip v-if="keys[10]==3" class="md-primary">CSW</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[10]!=answer[10]">
            <md-chip v-if="answer[10]==1" class="md-accent">PCB</md-chip>
            <md-chip v-if="answer[10]==2" class="md-accent">CAW</md-chip>
            <md-chip v-if="answer[10]==3" class="md-accent">CSW</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==12||clicknum==21" class="md-title">12.作业调度是从输入井中处于（）状态的作业中选取作业调入主存运行</span>
          <div v-if="clicknum==12">
            <md-radio v-model="radio" value="1">运行</md-radio>
            <md-radio v-model="radio" value="2">收容</md-radio>
            <md-radio v-model="radio" value="3">输入</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[11]==1" class="md-primary">运行</md-chip>
            <md-chip v-if="keys[11]==2" class="md-primary">收容</md-chip>
            <md-chip v-if="keys[11]==3" class="md-primary">输入</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[11]!=answer[11]">
            <md-chip v-if="answer[11]==1" class="md-accent">运行</md-chip>
            <md-chip v-if="answer[11]==2" class="md-accent">收容</md-chip>
            <md-chip v-if="answer[11]==3" class="md-accent">输入</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==13||clicknum==21" class="md-title">13.一作业进入内存后，则所属该作业的进程初始时处于（）状态</span>
          <div v-if="clicknum==13">
            <md-radio v-model="radio" value="1">运行</md-radio>
            <md-radio v-model="radio" value="2">等待</md-radio>
            <md-radio v-model="radio" value="3">就绪</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[12]==1" class="md-primary">运行</md-chip>
            <md-chip v-if="keys[12]==2" class="md-primary">等待</md-chip>
            <md-chip v-if="keys[12]==3" class="md-primary">就绪</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[12]!=answer[12]">
            <md-chip v-if="answer[12]==1" class="md-accent">运行</md-chip>
            <md-chip v-if="answer[12]==2" class="md-accent">等待</md-chip>
            <md-chip v-if="answer[12]==3" class="md-accent">就绪</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==14||clicknum==21" class="md-title">14.共享变量是指（）访问的变量</span>
          <div v-if="clicknum==14">
            <md-radio v-model="radio" value="1">只能被多个进程互斥</md-radio>
            <md-radio v-model="radio" value="2">只能被用户进程</md-radio>
            <md-radio v-model="radio" value="3">可被多个进程</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[13]==1" class="md-primary">只能被多个进程互斥</md-chip>
            <md-chip v-if="keys[13]==2" class="md-primary">只能被用户进程</md-chip>
            <md-chip v-if="keys[13]==3" class="md-primary">可被多个进程</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[13]!=answer[13]">
            <md-chip v-if="answer[13]==1" class="md-accent">只能被多个进程互斥</md-chip>
            <md-chip v-if="answer[13]==2" class="md-accent">只能被用户进程</md-chip>
            <md-chip v-if="answer[13]==3" class="md-accent">可被多个进程</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==15||clicknum==21" class="md-title">15.临界区是指并发进程中访问共享变量的（）段</span>
          <div v-if="clicknum==15">
            <md-radio v-model="radio" value="1">信息存储</md-radio>
            <md-radio v-model="radio" value="2">数据</md-radio>
            <md-radio v-model="radio" value="3">程序</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[14]==1" class="md-primary">信息存储</md-chip>
            <md-chip v-if="keys[14]==2" class="md-primary">数据</md-chip>
            <md-chip v-if="keys[14]==3" class="md-primary">程序</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[14]!=answer[14]">
            <md-chip v-if="answer[14]==1" class="md-accent">信息存储</md-chip>
            <md-chip v-if="answer[14]==2" class="md-accent">数据</md-chip>
            <md-chip v-if="answer[14]==3" class="md-accent">程序</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==16||clicknum==21" class="md-title">16.若系统中有五台绘图仪，有多个进程均需要使用两台，规定每个进程一次仅允许申请一台，则至多允许（）个进程参于竞争，而不会发生死锁</span>
          <div v-if="clicknum==16">
            <md-radio v-model="radio" value="1">2</md-radio>
            <md-radio v-model="radio" value="2">3</md-radio>
            <md-radio v-model="radio" value="3">4</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[15]==1" class="md-primary">2</md-chip>
            <md-chip v-if="keys[15]==2" class="md-primary">3</md-chip>
            <md-chip v-if="keys[15]==3" class="md-primary">4}</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[15]!=answer[15]">
            <md-chip v-if="answer[15]==1" class="md-accent">2</md-chip>
            <md-chip v-if="answer[15]==2" class="md-accent">3</md-chip>
            <md-chip v-if="answer[15]==3" class="md-accent">4</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==17||clicknum==21" class="md-title">17.产生系统死锁的原因可能是由于</span>
          <div v-if="clicknum==17">
            <md-radio v-model="radio" value="1">进程释放资源</md-radio>
            <md-radio v-model="radio" value="2">一个进程进入死循环</md-radio>
            <md-radio v-model="radio" value="3">多个进程竞争，资源出现了循环等待</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[16]==1" class="md-primary">进程释放资源 </md-chip>
            <md-chip v-if="keys[16]==2" class="md-primary">一个进程进入死循环</md-chip>
            <md-chip v-if="keys[16]==3" class="md-primary">多个进程竞争，资源出现了循环等待</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[16]!=answer[16]">
            <md-chip v-if="answer[16]==1" class="md-accent">进程释放资源</md-chip>
            <md-chip v-if="answer[16]==2" class="md-accent">一个进程进入死循环</md-chip>
            <md-chip v-if="answer[16]==3" class="md-accent">多个进程竞争，资源出现了循环等待</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==18||clicknum==21" class="md-title">18.主要由于（）原因，使UNIX易于移植</span>
          <div v-if="clicknum==18">
            <md-radio v-model="radio" value="1">UNIX大部分由汇编少部分用C语言编写</md-radio>
            <md-radio v-model="radio" value="2">UNIX是用汇编语言编写的</md-radio>
            <md-radio v-model="radio" value="3">UNIX小部分由汇编大部分用C语言编写</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[17]==1" class="md-primary">UNIX大部分由汇编少部分用C语言编写</md-chip>
            <md-chip v-if="keys[17]==2" class="md-primary">UNIX是用汇编语言编写的</md-chip>
            <md-chip v-if="keys[17]==3" class="md-primary">UNIX小部分由汇编大部分用C语言编写</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[17]!=answer[17]">
            <md-chip v-if="answer[17]==1" class="md-accent">UNIX大部分由汇编少部分用C语言编写</md-chip>
            <md-chip v-if="answer[17]==2" class="md-accent">UNIX是用汇编语言编写的</md-chip>
            <md-chip v-if="answer[17]==3" class="md-accent">UNIX小部分由汇编大部分用C语言编写</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==19||clicknum==21" class="md-title">19.UNIX系统中，进程调度采用的技术是</span>
          <div v-if="clicknum==19">
            <md-radio v-model="radio" value="1">先来先服务</md-radio>
            <md-radio v-model="radio" value="2">静态优先数</md-radio>
            <md-radio v-model="radio" value="3">动态优先数</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[18]==1" class="md-primary">先来先服务</md-chip>
            <md-chip v-if="keys[18]==2" class="md-primary">静态优先数</md-chip>
            <md-chip v-if="keys[18]==3" class="md-primary">动态优先数</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[18]!=answer[18]">
            <md-chip v-if="answer[18]==1" class="md-accent">先来先服务</md-chip>
            <md-chip v-if="answer[18]==2" class="md-accent">静态优先数</md-chip>
            <md-chip v-if="answer[18]==3" class="md-accent">动态优先数</md-chip>
          </div>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span v-if="clicknum==20||clicknum==21" class="md-title">20.UNIX系统中，文件存贮器的管理采用的是</span>
          <div v-if="clicknum==20">
            <md-radio v-model="radio" value="1">位图法</md-radio>
            <md-radio v-model="radio" value="2">空闲块表法</md-radio>
            <md-radio v-model="radio" value="3">成组连接法</md-radio>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21">
            <md-chip v-if="keys[19]==1" class="md-primary">位图法</md-chip>
            <md-chip v-if="keys[19]==2" class="md-primary">空闲块表法</md-chip>
            <md-chip v-if="keys[19]==3" class="md-primary">成组连接法</md-chip>
          </div>
          <div style="margin-top: 10px;" v-if="clicknum==21&&keys[19]!=answer[19]">
            <md-chip v-if="answer[19]==1" class="md-accent">位图法</md-chip>
            <md-chip v-if="answer[19]==2" class="md-accent">空闲块表法</md-chip>
            <md-chip v-if="answer[19]==3" class="md-accent">成组连接法</md-chip>
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
      keys: [3, 3, 3, 2, 3, 3, 1, 3, 3, 1, 3, 2, 3, 3, 3, 3, 3, 3, 3, 3],
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
