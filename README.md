# Android美食APP项目开源(包括后台)
------
## 项目简介
-------------------

**厨娘**定位为一款集美食，社交，LBS服务于一体的美食推荐APP。为你发现周边美食的同时提供一个吃货分享的平台。

## 功能模块
-------------------
- **美食推荐** ：提供基础的美食信息查询；
- **商家推荐** : 基于用户当前位置推荐周边的人们店家；
- **美食分享**：美食分享，动态发表，美食收藏等等；
- **饮食计划** ：用户定制健康饮食计划

## 技术特性
-------------------
- **Material design设计风格**：app整体设计(除去底部tab栏)外，大量使用material design设计风格的布局和开源组件。例如FloatingActionBar，StaggeredGridView，RecycleView,CardView等等；具体可参考[Material design官方设计指南](https://material.google.com/#)
- **UIL图片加载框架**：美食，店家，用户头像等图片的加载和缓存均使用UIL框架，[UIL官方github](https://github.com/nostra13/Android-Universal-Image-Loader)
使用方法请参考[Android 开源框架Universal-Image-Loader完全解析（一）--- 基本介绍及使用](http://blog.csdn.net/xiaanming/article/details/26810303/);
- **android-asyn-http作为网络请求库**：一个android异步网络请求框架，使用方式[官方使用指南](http://loopj.com/android-async-http/)讲的很清楚；
- **Gson作为处理json和java bean**:由于APP从后台拿到的数据都是restful api提供的json数据，因此使用google的[gson](https://github.com/google/gson)来处理json数据;



## 引用的开源组件
----------------------
- [floatingsearchview](https://github.com/arimorty/floatingsearchview):开源浮动搜索框组件；
- [MultiImageSelector](https://github.com/lovetuzitong/MultiImageSelector)：开源多图片选择器；
- [Material ICON](https://design.google.com/icons/#ic_search)：google 官方material图标；
- [Kanner](https://github.com/iKrelve/Kanner)：一个开源Android轮播图组件；
- [FloatingActionButton](https://github.com/Clans/FloatingActionButton)：开源FloatingActionButton组件；
- [Android-Universal-Image-Loader](https://github.com/nostra13/Android-Universal-Image-Loader)：UIL图片加载框架；
- [android-async-http](http://loopj.com/android-async-http/):一个开源网络异步请求处理库

# License
```
Copyright 2016 Sambor 

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

