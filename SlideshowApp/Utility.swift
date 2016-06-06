//
//  Utility.swift
//  SlideshowApp
//
//  Created by 荒木 敦 on 2016/06/07.
//  Copyright © 2016年 maru.ishi. All rights reserved.
//

import Foundation

class Utility {
    class func className(type: AnyClass) -> String {
        return NSStringFromClass(type).componentsSeparatedByString(".").last!
    }
}