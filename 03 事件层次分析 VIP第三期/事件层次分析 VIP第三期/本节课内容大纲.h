//
//  本节课内容大纲.h
//  事件层次分析 VIP第三期
//
//  Created by 八点钟学院 on 2018/3/23.
//  Copyright © 2018年 八点钟学院. All rights reserved.
//

#ifndef ________h
#define ________h

1、iOS有哪些事件
2、触摸事件的整体流程（runloop相关、事件传递和响应）
3、事件传递流程：hitTest、pointInside来找到这个view
4、hitTest方法里的实现
5、事件响应：UIResponder这个类，因为每个view都有一个nextResponder的对象，这样子就串联了一个响应链
6、有了上面的响应链，然后就会进行touch四个方法的传递响应，你可以不写super touchbegin/moved/cancel/end来阻止这个传递流程
7、手势和hitTest、pointInside的关联；手势种类的识别；手势和touch事件的关系
8、button和hitTest、pointInside的关联；button事件种类的识别；button事件的响应

作业：
分析一下button被点击的时候，进行响应，背后发生了什么事情，写出你描述


#endif /* ________h */
