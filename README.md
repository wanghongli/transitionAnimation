# transitionAnimation
自定义转场动画   不是自己的原创代码。

当一个controllerA push 到另外一个controllerB 。
在controllerA 里面遵守协议。 uinavigationcontrollerdelegate ，在协议方法里面 拦截，返回一个 遵守uiviewcontrollercontexttransitioning协议的对象。
这个对象实现协议里面 的两个方法。

1.疑问：遵守uiviewcontrollercontexttransitioning这个协议的 继承nsobject的类的两个代理方法是在哪个环节调用？ 是在controllerB之后的生命周期viewdidload之前么么？ 

2.疑问：项目里面如果有这种需求 是否是要全局写一个 ？ 还是单独在一个controller里面写？  答案肯定是要在单独的controller里面写。
