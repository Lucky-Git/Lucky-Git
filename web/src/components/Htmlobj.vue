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
          <span class="md-display-1">HTML实例</span>
        </div>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Htmlbasic">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Htmltestintro">
            <md-button class="md-raised md-accent">下一节</md-button>
          </router-link>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML基础标签实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_basic">一个简单的HTML文件</a></p>
          <p>这个例子是一个很简单的 HTML 文件，使用了尽可能少的 HTML 标签。它向您演示了 body 元素中的内容是如何被浏览器显示的。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_paragraphs1">简单的段落</a></p>
          <p>此例演示：段落元素中的文字如何被浏览器显示。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_paragraphs2">更多的段落</a></p>
          <p>本例演示段落元素的某些缺省的行为。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_poem">“诗歌”问题</a></p>
          <p>本例演示 HTML 格式化的某些问题。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_paragraphs">折行</a></p>
          <p>本例演示在 HTML 文档中折行的使用。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_headers">标题</a></p>
          <p>本例演示在 HTML 文档中显示标题的标签。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_header">居中排列的标题</a></p>
          <p>本例演示一个居中排列的标题。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_hr.com.cn/tiy/t.asp?f=html_header">水平线</a></p>
          <p>本例演示如何插入水平线。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_comment">隐藏的注释</a></p>
          <p>本例演示如何在 HTML 源代码中插入隐藏的注释。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_bgcolor">背景颜色</a></p>
          <p>本例演示如何为 HTML 页面添加背景颜色。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML文本格式化实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_textformatting">文本格式化</a></p>
          <p>此例演示如何在一个 HTML 文件中对文本进行格式化</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_preformattedtext">预格式文本</a></p>
          <p>此例演示如何使用 pre 标签对空行和空格进行控制。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_computeroutput">“计算机输出”标签</a></p>
          <p>此例演示不同的“计算机输出”标签的显示效果。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_address">地址</a></p>
          <p>此例演示如何在 HTML 文件中写地址。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_abbracronym">缩写和首字母缩写</a></p>
          <p>此例演示如何实现缩写或首字母缩写。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_bdo">文字方向</a></p>
          <p>此例演示如何改变文字的方向。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_quotations">块引用</a></p>
          <p>此例演示如何实现长短不一的引用语。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_delins">删除字效果和插入字效果</a></p>
          <p>此例演示如何标记删除文本和插入文本。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML链接实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_links">创建超级链接</a></p>
          <p>本例演示如何在 HTML 文档中创建链接。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_imglink">将图像作为链接</a></p>
          <p>本例演示如何使用图像作为链接。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_link_target">在新的浏览器窗口打开链接</a></p>
          <p>本例演示如何在新窗口打开一个页面，这样的话访问者就无需离开你的站点了。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_link_locations">链接到同一个页面的不同位置</a></p>
          <p>本例演示如何使用链接跳转至文档的另一个部分</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_frame_getfree">跳出框架</a></p>
          <p>本例演示如何跳出框架，假如你的页面被固定在框架之内。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_mailto">创建电子邮件链接</a></p>
          <p>本例演示如何如何链接到一个邮件。（本例在安装邮件客户端程序后才能工作。）</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_mailto2">创建电子邮件链接 2</a></p>
          <p>本例演示更加复杂的邮件链接。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML框架实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_frame_cols">垂直框架</a></p>
          <p>本例演示：如何使用三份不同的文档制作一个垂直框架。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_frame_rows">水平框架</a></p>
          <p>本例演示：如何使用三份不同的文档制作一个水平框架。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_mailto2">如何使用 &lt;noframes&gt;标签</a></p>
          <p>本例演示：如何使用 &lt;noframes&gt;标签。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_frame_mix">混合框架结构</a></p>
          <p>本例演示如何制作含有三份文档的框架结构，同时将他们混合置于行和列之中。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_frame_noresize">含有 noresize="noresize" 属性的框架结构</a></p>
          <p>本例演示 noresize 属性。在本例中，框架是不可调整尺寸的。在框架间的边框上拖动鼠标，你会发现边框是无法移动的。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_frame_navigation">导航框架</a></p>
          <p>本例演示如何制作导航框架。导航框架包含一个将第二个框架作为目标的链接列表。名为 "contents.htm" 的文件包含三个链接。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_iframe">内联框架</a></p>
          <p>本例演示如何创建内联框架（HTML 页中的框架）。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_mailto2">跳转至框架内的一个指定的节</a></p>
          <p>本例演示两个框架。其中的一个框架设置了指向另一个文件内指定的节的链接。这个"link.htm"文件内指定的节使用 &lt;a name="C10"&gt;进行标识。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_frame_navigation2">使用框架导航跳转至指定的节</a></p>
          <p>本例演示两个框架。左侧的导航框架包含了一个链接列表，这些链接将第二个框架作为目标。第二个框架显示被链接的文档。导航框架其中的链接指向目标文件中指定的节。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML表格实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_tables">表格</a></p>
          <p>这个例子演示如何在 HTML 文档中创建表格。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_borders">表格边框</a></p>
          <p>本例演示各种类型的表格边框。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_tables2">没有边框的表格</a></p>
          <p>本例演示一个没有边框的表格。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_headers">表格中的表头(Heading)</a></p>
          <p>本例演示如何显示表格表头。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_nbsp">空单元格</a></p>
          <p>本例展示如何使用 "&nbsp;" 处理没有内容的单元格。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_tables3">带有标题的表格</a></p>
          <p>本例演示一个带标题 (caption) 的表格</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_span">跨行或跨列的表格单元格</a></p>
          <p>本例演示如何定义跨行或跨列的表格单元格。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_elements">表格内的标签</a></p>
          <p>本例演示如何显示在不同的元素内显示元素。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_cellpadding">单元格边距(Cell padding)</a></p>
          <p>本例演示如何使用 Cell padding 来创建单元格内容与其边框之间的空白。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_cellspacing">单元格间距(Cell spacing)</a></p>
          <p>本例演示如何使用 Cell spacing 增加单元格之间的距离。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_background">向表格添加背景颜色或背景图像</a></p>
          <p>本例演示如何向表格添加背景。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_cellbackground">向表格单元添加背景颜色或者背景图像</a></p>
          <p>本例演示如何向一个或者更多表格单元添加背景。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_align">在表格单元中排列内容</a></p>
          <p>本例演示如何使用 "align" 属性排列单元格内容,以便创建一个美观的表格。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_table_frames">框架(frame)属性</a></p>
          <p>本例演示如何使用 "frame" 属性来控制围绕表格的边框。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML列表实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_list_unordered">无序列表</a></p>
          <p>本例演示无序列表。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_list_ordered">有序列表</a></p>
          <p>本例演示有序列表。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_lists_unordered">不同类型的无序列表</a></p>
          <p>本例演示一个无序列表。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_lists_ordered">不同类型的有序列表</a></p>
          <p>本例演示不同类型的有序列表。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_lists_nested">嵌套列表</a></p>
          <p>本例演示如何嵌套列表。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_lists_nested2">嵌套列表 2</a></p>
          <p>本例演示更复杂的嵌套列表。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_list_definition">定义列表</a></p>
          <p>本例演示一个定义列表。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML图像实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_image">插入图像</a></p>
          <p>本例演示如何在网页中显示图像。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_image2">从不同的位置插入图片</a></p>
          <p>本例演示如何将其他文件夹或服务器的图片显示到网页中。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_backgroundimage">背景图片</a></p>
          <p>本例演示如何向 HTML 页面添加背景图片。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_image_align">排列图片</a></p>
          <p>本例演示如何在文字中排列图像。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_image_float">浮动图像</a></p>
          <p>本例演示如何使图片浮动至段落的左边或右边。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_image_size">调整图像尺寸</a></p>
          <p>本例演示如何将图片调整到不同的尺寸。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_image_alt">为图片显示替换文本</a></p>
          <p>本例演示如何为图片显示替换文本。在浏览器无法载入图像时，替换文本属性告诉读者们失去的信息。为页面上的图像都加上替换文本属性是个好习惯。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_image_link">制作图像链接</a></p>
          <p>本例演示如何将图像作为一个链接使用。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_areamap">创建图像映射</a></p>
          <p>本例显示如何创建带有可供点击区域的图像地图。其中的每个区域都是一个超级链接。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_ismap">把图像转换为图像映射</a></p>
          <p>本例显示如何把一幅普通的图像设置为图像映射。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML背景实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_back_good">搭配良好的背景和颜色</a></p>
          <p>一个背景颜色和文字颜色搭配良好的例子，使页面中的文字易于阅读。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_back_bad">搭配得不好的背景和颜色</a></p>
          <p>一个背景颜色和文字颜色搭配得不好的例子，使页面中的文字难于阅读。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_back_img">可用性强的背景图像</a></p>
          <p>背景图像和文字颜色使页面文本易于阅读的例子。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_back_img2">可用性强的背景图像 2</a></p>
          <p>另一个背景图像和文字颜色使页面文本易于阅读的例子。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_back_imgbad">可用性差的背景图像</a></p>
          <p>背景图像和文字颜色使页面文本不易阅读的例子。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML样式实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_style">HTML中的样式</a></p>
          <p>本例演示如何使用添加到 &lt;head&gt; 部分的样式信息对 HTML 进行格式化。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_linknoline">没有下划线的链接</a></p>
          <p>本例演示如何使用样式属性做一个没有下划线的链接。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_link">链接到一个外部样式表</a></p>
          <p>本例演示如何 &lt;link&gt;标签链接到一个外部样式表。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-left: 15px;">
          <span class="md-title">HTML脚本实例</span>
        </div>
        <div style="margin-top: 20px;margin-left: 15px;margin-bottom: 20px">
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_script">插入一段脚本</a></p>
          <p>本例演示如何将脚本插入 HTML 文档。</p>
          <p><a href="http://www.w3school.com.cn/tiy/t.asp?f=html_noscript">运行于不支持脚本的浏览器</a></p>
          <p>本例演示如何对付不支持脚本的浏览器。</p>
        </div>
        <md-divider></md-divider>
        <div style="margin-top: 20px;margin-bottom: 20px">
          <router-link to="/Htmlbasic">
            <md-button class="md-raised md-accent">上一节</md-button>
          </router-link>
          <router-link to="/Htmltestintro">
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
  name: 'Htmlobj',
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
