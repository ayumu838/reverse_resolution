//
//  ViewController.swift
//  UIKit_008
//
//  Created by 望月歩 on 2017/04/22.
//  Copyright © 2017年 望月歩. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    private let BUTTON_NORMAL : Int = 1
    private let BUTTON_FIRE : Int = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (granted,error) in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickMyButton(_ sender: UIButton) {
        print("onClickMyButton")
        if sender.tag == 1 {
            showNotification()
        }
        else if sender.tag == 2 {
            
        }
    }
    
    private func showNotification() {
        print("show notification")
        
        let content = UNMutableNotificationContent()
        
        content.title = "Title1"
        content.body = "Hello Notification"
        content.sound = UNNotificationSound.default()
        
        let request = UNNotificationRequest.init(identifier: "Title1", content: content, trigger: nil)
        
        let center = UNUserNotificationCenter.current()
        center.add(request) { (error) in
            print(error)
        }
    }
    
    private func showNotificationFire(){
        let content = UNMutableNotificationContent()
        
        content.title = "Title2"
        content.body = "Hello notification fire!"
        content.sound = UNNotificationSound.default()
        
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest.init(identifier: "Title2", content: content, trigger: trigger)
        
        let center = UNUserNotificationCenter.current()
        center.add(request) { (error) in
            print(error)
        }
    }

}

