---
layout: post
title: "octpress多人(多台电脑)协作"
date: 2014-04-26 10:51:40 +0800
comments: true
categories: 技术博客
tags: octpress
---

 1. octpress协作指南

    * clone目标地址到本地服务器命名为自己喜欢的名字，例如，我的clone到本地后改名为 octsource。然后复制octpress整个文件夹，并命名为`_deploy`,然后放到 octpress目录下。
<!-- more -->
    * 进入octpress目录下，使用git branch，查看目前的分支是否为master，如果是使用命令， git checkout source,切换到source分支下。（默认情况下，大家都是将master分支用于部署环境，而源码都是存放在source分支下。）
    * 经过以上两个步骤，就可以使用rake preview和rake generate了。**特殊情况：**偶尔情况下，安装的ruby环境或者rake会导致一些问题，只需要更改Gemfile中相应的版本即可！

 2. markdown编辑器推荐
  [markdown在线编辑-作业部落](https://www.zybuluo.com/mdeditor)
 	


