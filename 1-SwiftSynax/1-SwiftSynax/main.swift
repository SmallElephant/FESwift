//
//  main.swift
//  1-SwiftSynax
//
//  Created by keso on 16/6/5.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

import Foundation

print("Hello, World!")

class SurveyQuestion {
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
// 输出 "Do you like cheese?"
cheeseQuestion.response = "Yes, I do like cheese."

func swapTwoValues<T>(inout a: T, inout _ b: T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 100
swapTwoValues(&someInt, &anotherInt)
// someInt is now 107, and anotherInt is now 3

print("First:\(someInt)----Next:\(anotherInt)")

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
print("First:\(someString)----Next:\(anotherString)")
