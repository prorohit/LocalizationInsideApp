//
//  ViewController.swift
//  LocalizationInsideApp
//
//  Created by Rohit Singh on 1/17/18.
//  Copyright © 2018 Rohit Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnReload: UIButton!
    var lang = "en"
    @IBOutlet weak var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.value(forKey: "status") != nil {
            if let status = UserDefaults.standard.value(forKey: "status") as? Bool {
                self.btnReload.isSelected = status
            }
        } else {
            self.btnReload.isSelected = false
        }
        
        if UserDefaults.standard.value(forKey: "lang") != nil {
            let str = UserDefaults.standard.value(forKey: "lang") as! String
            if str == "ar" {
                if #available(iOS 9.0, *) {
                    UIView.appearance().semanticContentAttribute = .forceRightToLeft
                }
            }
            else {
                if #available(iOS 9.0, *) {
                    UIView.appearance().semanticContentAttribute = .forceLeftToRight
                }
            }
            self.lblText.text = self.returnLocalizedStringForKey("hello", code: str)
            
        } else {
            self.lblText.text = self.returnLocalizedStringForKey("hello", code: "en")
        }
    }
    
    
    
    func returnLocalizedStringForKey (_ key : String, code: String) -> String {
        let lang = code
        let str : String = key.localized(lang: lang)!
        return str
    }
    
    @IBAction func tapReload(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        UserDefaults.standard.setValue(sender.isSelected , forKey: "status")
        UserDefaults.standard.synchronize()
        if sender.isSelected == true {
            UserDefaults.standard.setValue("ar", forKey: "lang")
            self.lang = "ar"
        } else {
            self.lang = "en"
            UserDefaults.standard.setValue("en", forKey: "lang")
        }
        
        reloadViews()
    }
    
    func reloadViews () {
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        rootviewcontroller.rootViewController = self.storyboard?.instantiateViewController(withIdentifier: "viewc")
        let mainwindow = (UIApplication.shared.delegate?.window!)!
        mainwindow.backgroundColor = UIColor(hue: 0.6477, saturation: 0.6314, brightness: 0.6077, alpha: 0.8)
        
        UIView.transition(with: mainwindow, duration: 0.55001, options: .transitionFlipFromLeft, animations: { () -> Void in
        }) { (finished) -> Void in
        }
    }
}

