---
layout: post
title: "Android倒计时类CountDownTimer的使用"
date: 2014-04-14 13:50:21 +0800
comments: true
categories:  android
tags: 验证码
---

## 方法一：
只需要在某个button上点击的时候，触发下面的方法即可：

```
private void startTimeCount() {
    new CountDownTimer(60000,1000) {
        @Override
        public void onTick(long millisUntilFinished) {
        	button.setEnabled(false);
        	button.setText(millisUntilFinished/1000+"秒后可重获验证码");
      
        @Override
        public void onFinish() {
        	button.setEnabled(true);
        	button.setText("重发验证码");
        }
    }.start();
```
<!--more-->
其中，button为要显示的文字，当点击后，会出现， **`x秒后可重获验证码`**的文字

##方法二：
使用自定义的方式来实现
> [android自定义button实现倒计时功能](http://blog.csdn.net/fengbofenglingling/article/details/9840623)

