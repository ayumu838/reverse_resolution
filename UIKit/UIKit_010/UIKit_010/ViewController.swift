//
//  ViewController.swift
//  UIKit_010
//
//  Created by 望月歩 on 2017/04/23.
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
        let alert = UIAlertController(title: "タイトル", message: "メッセージ", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { action in
            print("Action OK!")
        }
        
        alert.addAction(okAction)
        present(alert,animated: true,completion: nil)
    }

}

