//
//  main.swift
//  3-StringExtension
//
//  Created by FlyElephant on 16/6/11.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

import Foundation

var str="My name is FlyElephant"
//start
var char=str.characters[str.startIndex]
print("\(char)")
//middle
var advance=str.characters[str.startIndex.advancedBy(3)]
print("\(advance)")

//end
var end=str.characters[str.endIndex.predecessor()]
print("\(end)")

var startIndex=str.startIndex.advancedBy(0)
var endIndex=str.startIndex.advancedBy(6)
var rangeContent=str[Range(startIndex...endIndex)]
print("\(rangeContent)")

//Extension FlyElephant
var exChar:Character=str[0]
print("Extension:\(exChar)")

var stContent:String=str[3]
print("Extension:\(stContent)")

var range=Range(11...21)
var strRange=str[range]
print("Extension:\(strRange)")
