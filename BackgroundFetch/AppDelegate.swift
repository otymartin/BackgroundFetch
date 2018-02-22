//
//  AppDelegate.swift
//  BackgroundFetch
//
//  Created by Martin Otyeka on 2018-02-21.
//  Copyright © 2018 Dopeness Academy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        UIApplication.shared.setMinimumBackgroundFetchInterval(10)
        
        return true
    }

    func application(_ application: UIApplication, performFetchWithCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        if let vc = self.window?.rootViewController as? ViewController {
            vc.tap()
            completionHandler(.newData)
        }
    }
    
}

