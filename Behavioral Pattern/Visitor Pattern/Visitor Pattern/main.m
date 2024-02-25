//
//  main.m
//  Visitor Pattern
//
//  Created by 童玉龙 on 2024/2/21.
//

#import <Foundation/Foundation.h>
#import "EmployeeList.h"
#import "FulltimeEmployee.h"
#import "ParttimeEmployee.h"
#import "FADepartment.h"
#import "HRDepartment.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         访问者模式总结
               由于访问者模式的使用条件较为苛刻，本身结构也较为复杂，因此在实际应用中使用频率不是特别高。当系统中存在一个较为复杂的对象结构，且不同访问者对其所采取的操作也不相同时，可以考虑使用访问者模式进行设计。在XML文档解析、编译器的设计、复杂集合对象的处理等领域访问者模式得到了一定的应用。

         1.主要优点

               访问者模式的主要优点如下：

         (1) 增加新的访问操作很方便。使用访问者模式，增加新的访问操作就意味着增加一个新的具体访问者类，实现简单，无须修改源代码，符合“开闭原则”。

         (2) 将有关元素对象的访问行为集中到一个访问者对象中，而不是分散在一个个的元素类中。类的职责更加清晰，有利于对象结构中元素对象的复用，相同的对象结构可以供多个不同的访问者访问。

         (3) 让用户能够在不修改现有元素类层次结构的情况下，定义作用于该层次结构的操作。

         2.主要缺点

               访问者模式的主要缺点如下：

         (1) 增加新的元素类很困难。在访问者模式中，每增加一个新的元素类都意味着要在抽象访问者角色中增加一个新的抽象操作，并在每一个具体访问者类中增加相应的具体操作，这违背了“开闭原则”的要求。

         (2) 破坏封装。访问者模式要求访问者对象访问并调用每一个元素对象的操作，这意味着元素对象有时候必须暴露一些自己的内部操作和内部状态，否则无法供访问者访问。

         3.适用场景

               在以下情况下可以考虑使用访问者模式：

         (1) 一个对象结构包含多个类型的对象，希望对这些对象实施一些依赖其具体类型的操作。在访问者中针对每一种具体的类型都提供了一个访问操作，不同类型的对象可以有不同的访问操作。

         (2) 需要对一个对象结构中的对象进行很多不同的并且不相关的操作，而需要避免让这些操作“污染”这些对象的类，也不希望在增加新操作时修改这些类。访问者模式使得我们可以将相关的访问操作集中起来定义在访问者类中，对象结构可以被多个不同的访问者类所使用，将对象本身与对象的访问操作分离。

         (3) 对象结构中对象对应的类很少改变，但经常需要在此对象结构上定义新的操作。
         ————————————————

                                     版权声明：本文为博主原创文章，遵循 CC 4.0 BY-SA 版权协议，转载请附上原文出处链接和本声明。
                                 
         原文链接：https://blog.csdn.net/lovelion/article/details/7433591
         */
        // insert code here...
        EmployeeList *eList = [[EmployeeList alloc] init];
        Employee *e1 = [FulltimeEmployee initInformation:@{
            @"name":@"张无忌",
            @"weeklyWage":@"3200.00",
            @"workTime":@"45",
        }];
        Employee *e2 = [FulltimeEmployee initInformation:@{
            @"name":@"杨过",
            @"weeklyWage":@"2000.00",
            @"workTime":@"40",
        }];
        Employee *e3 = [FulltimeEmployee initInformation:@{
            @"name":@"段誉",
            @"weeklyWage":@"2400.00",
            @"workTime":@"38",
        }];
        
        Employee *e4 = [ParttimeEmployee initInformation:@{
            @"name":@"洪七公",
            @"hourWage":@"80.00",
            @"workTime":@"20",
        }];
        
        Employee *e5 = [ParttimeEmployee initInformation:@{
            @"name":@"郭靖",
            @"hourWage":@"60.00",
            @"workTime":@"18",
        }];
        
        [eList.list addObject:e1];
        [eList.list addObject:e2];
        [eList.list addObject:e3];
        [eList.list addObject:e4];
        [eList.list addObject:e5];
        
        HRDepartment *hr = [[HRDepartment alloc] init];
        [eList accept:hr];
        
        FADepartment *fa = [[FADepartment alloc] init];
        [eList accept:fa];
    }
    return 0;
}
