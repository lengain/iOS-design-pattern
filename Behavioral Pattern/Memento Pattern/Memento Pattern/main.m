//
//  main.m
//  Memento Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "Chessman.h"
#import "MementoCaretaker.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         备忘录模式总结
               备忘录模式在很多软件的使用过程中普遍存在，但是在应用软件开发中，它的使用频率并不太高，因为现在很多基于窗体和浏览器的应用软件并没有提供撤销操作。如果需要为软件提供撤销功能，备忘录模式无疑是一种很好的解决方案。在一些字处理软件、图像编辑软件、数据库管理系统等软件中备忘录模式都得到了很好的应用。

          

               1.主要优点

               备忘录模式的主要优点如下：

               (1)它提供了一种状态恢复的实现机制，使得用户可以方便地回到一个特定的历史步骤，当新的状态无效或者存在问题时，可以使用暂时存储起来的备忘录将状态复原。

               (2)备忘录实现了对信息的封装，一个备忘录对象是一种原发器对象状态的表示，不会被其他代码所改动。备忘录保存了原发器的状态，采用列表、堆栈等集合来存储备忘录对象可以实现多次撤销操作。

          

               2.主要缺点

               备忘录模式的主要缺点如下：

               资源消耗过大，如果需要保存的原发器类的成员变量太多，就不可避免需要占用大量的存储空间，每保存一次对象的状态都需要消耗一定的系统资源。

          

               3.适用场景

               在以下情况下可以考虑使用备忘录模式：

               (1)保存一个对象在某一个时刻的全部状态或部分状态，这样以后需要时它能够恢复到先前的状态，实现撤销操作。

               (2)防止外界对象破坏一个对象历史状态的封装性，避免将对象历史状态的实现细节暴露给外界对象。


         ————————————————

                                     版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。
                                 
         原文链接：https://blog.csdn.net/lovelion/article/details/7526759
         
         */
        // insert code here...
        MementoCaretaker *mc = [MementoCaretaker new];
        Chessman *chess = [Chessman chessWithX:1 Y:1 label:@"车"];
        [chess display];
        [mc push:[chess save]];
        chess.y = 4;
        [chess display];
        [mc push:[chess save]];
        chess.x = 5;
        [chess display];
        NSLog(@"---------悔棋---------");
        [chess restore:[mc pop]];
        [chess display];
        NSLog(@"---------悔棋---------");
        [chess restore:[mc pop]];
        [chess display];
    }
    return 0;
}
