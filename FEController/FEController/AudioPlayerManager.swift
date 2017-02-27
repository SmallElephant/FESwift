//
//  AudioPlayerManager.swift
//  FEController
//
//  Created by FlyElephant on 16/11/9.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

import UIKit

class AudioPlayerManager: NSObject {
    static let sharedInstance = AudioPlayerManager()
    var player:String!
    private override init() {
        print("初始化")
        self.player = "测试"
    }
}
