//
//  ViewController.swift
//  BackgroundFetch
//
//  Created by Martin Otyeka on 2018-02-21.
//  Copyright © 2018 Dopeness Academy. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in }
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tap))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func tap() {
        let content = UNMutableNotificationContent()
        content.title = "Views"
        content.badge = 1
        content.body = "You have been viewed 5 times by people around you!"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "fire", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request) { (error) in
            print(error?.localizedDescription)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

