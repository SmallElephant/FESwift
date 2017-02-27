//
//  ViewController.swift
//  FEController
//
//  Created by FlyElephant on 16/11/9.
//  Copyright © 2016年 FlyElephant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var manager = AudioPlayerManager.sharedInstance
        print("\(manager)")
        manager = AudioPlayerManager.sharedInstance
        print("\(manager)---初始化内容:\(manager.player!)")
        var mutalbeArr:[String] = []
        mutalbeArr.append("测试")
        mutalbeArr.append("中文")
        print("\(mutalbeArr)")
        
        var animals = ["cats", "dogs", "chimps", "moose", "chimps"]
        
        animals = animals.filter(){$0 != "chimps"}
        print(animals) // ["cats", "dogs", "moose"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

