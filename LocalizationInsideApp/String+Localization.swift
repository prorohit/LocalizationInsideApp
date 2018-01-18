//
//  SwiftExtension.swift
//  
//
//  Created by Rohit Singh on 26/11/16.
//
//

import UIKit

extension String {
    func localized(lang:String) -> String? {
        if let path = Bundle.main.path(forResource: lang, ofType: "lproj") {
            if let bundle = Bundle(path: path) {
                return NSLocalizedString(self, tableName: nil, bundle: bundle, value: "", comment: "")
            }
        }
        return nil;
    }
}
