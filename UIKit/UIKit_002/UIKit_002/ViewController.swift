//
//  ViewController.swift
//  UIKit_002
//
//  Created by 望月歩 on 2017/04/20.
//  Copyright © 2017年 望月歩. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickMyButton(_ sender: UIButton) {
        print("onClickMyBuyyon")
        print("sender.currentTitle: \(sender.currentTitle)")
        print("sender.tag: \(sender.tag)")
    }

}

