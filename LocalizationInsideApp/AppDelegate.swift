//
//  AppDelegate.swift
//  LocalizationInsideApp
//
//  Created by Rohit Singh on 1/17/18.
//  Copyright © 2018 Rohit Singh. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension AppDelegate {
    
    func configureForLanguage() {
//        UIButton.appearance().substituteFontName = ""
//        UILabel.appearance().substituteFontName = ""
//        UITextField.appearance().alignmentCheck = ""
//        UIView.appearance().layOutCheck = ""
    }
    
  
}

//extension UIView {
//
//    public var layOutCheck: String {
//        get {
//            return ""
//        }
//        set {
//
//            let isCurrentLanguageRTL = !UIApplication.isLanguageLTR()
//
//            if  isCurrentLanguageRTL {
//                if #available(iOS 9.0, *) {
//                    self.semanticContentAttribute = .forceRightToLeft
//                }
//            } else {
//                if #available(iOS 9.0, *) {
//                    self.semanticContentAttribute = .forceLeftToRight
//                }
//            }
//        }
//    }
//}
//
//
//
//extension UIButton {
//
//    var substituteFontName: String {
//        get {
//            if let font = self.titleLabel?.font.fontName {
//                return font
//            }
//            return ""
//        }
//        set {
////            if let currentFontName = self.titleLabel?.font.fontName, tag != kAttributeLabelTag {
////                let newFontNamePrefix = LocalesManager.getSubstituteFontName()
////                let newFontName = LMSFontUtility.getFontFor(currentFontName: currentFontName, withLatestFont: newFontNamePrefix)
////                self.titleLabel?.font = UIFont(name: newFontName, size: (self.titleLabel?.font.pointSize)!)
////            }
//        }
//    }
//
//}
//
//extension UITextField {
//
//    public var alignmentCheck : String {
//        get {
//            return ""
//        }
//        set {
//
//            let isCurrentLanguageRTL = !UIApplication.isLanguageLTR()
//            if self.textAlignment != .center {
//                if  isCurrentLanguageRTL {
//                    self.textAlignment = .right
//                } else {
//                    self.textAlignment = .left
//                }
//            }
//
//
//        }
//    }
//}



