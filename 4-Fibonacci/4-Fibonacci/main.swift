//
//  main.swift
//  4-Fibonacci
//
//  Created by FlyElephant on 16/6/11.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

import Foundation

//0、1、1、2、3、5、8、13、21、34
func fbonacci(n:NSInteger) -> NSInteger {
    if n<=0 {
        return 0
    }
    
    if n==1 || n==2 {
        return 1
    }
    
    return fbonacci(n-1)+fbonacci(n-2)
}


//for index in 0...100 {
//    print("第\(index)项结果:\(fbonacci(index))")
//}
//0、1、1、2、3、5、8、13、21、34
func fbonacciLoop(n:NSInteger) -> NSInteger {
    if n<=0 {
        return 0
    }
    
    if n==1 {
        return 1
    }
    var result:NSInteger = 0
    var fbonacciFirst = 0
    var fbonacciSecond = 1
    
    for _  in 2...n {
        result = fbonacciFirst+fbonacciSecond
        fbonacciFirst = fbonacciSecond
        fbonacciSecond = result
    }
    
    return result
}


for index in 0...50 {
    print("第\(index)项结果:\(fbonacciLoop(index))")
}
