---
title: 你好，世界
---
欢迎来到我的博客！这是第一篇博客，主要有以下两部分内容：

1. 介绍一下我对这个博客诞生的的原因；

2. 作为一个技术博客，我先把怎么把这个博客基于的技术做个大概的介绍；

## 为啥要搞个博客

我是一个写代码的，现在有很多标签，工程师，程序员，码农 ，代码搬运工 。。。 反正很多标签；

但是我还是挺喜欢一个称呼就是『匠人』；

如果是还能加上一个『会思考』的匠人的修饰，我就会很高兴了；

有这个心愿，还是要做点什么来支撑这个让我喜欢的称呼；

基于此，此博客主要有以下几个方面：

1. 新技术的研究，重点关注细节；
2. 技术对产品形态的影响，重点提供产品上的可能性，这里不会涉及产品设计方面的内容；
3. 技术方案的优秀案例介绍；重点介绍创新点；
4. 其他一些个人总结性的东西；

希望大家能喜欢。

## 本博客的技术方案

### 需求点：

1. 不能是现有的博客平台，这不是技术人的风格 :)，最起码要支持 shell 里面写博客吧；
2. 维护费用不能太高；
3. 性能要好，页面打开速度要快；
4. 要保证数据的安全；

### 总体技术方案

```
|-----------------|
|     展示层       |\
|     Hexo        | \
|-----------------|  \
                       >    |-----------------|
                            |     存储层       |
                         >  |     GitHub      |
                       /    |-----------------|
                      /     
                     /
                    /
      |-----------------|
      |     书写层       |
      |    MarkDown     |
      |-----------------|

```
### 技术优化点

1. 展示层 [Hexo](https://hexo.io/)

  这一块目前用的server 是 Hexo自带的server，下一步会切换到 ngix,
  默认的theme 由于引用了Google 的字体 和google的 js资源；导致国内被封掉了；这里 http://www.jianshu.com/p/ffcdc4fec6ec 文章解决了这个问题，经过测试已经解决了；
2. 存储层 在git上面开放开一个仓库，简单高效 简陋 :)
3. 书写层 图片的展示是个挑战，git的性能不能满足，暂时先借用阿里云的oss存储；
