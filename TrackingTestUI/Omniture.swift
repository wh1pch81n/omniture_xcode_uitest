//
//  Omniture.swift
//  TrackingTestUI
//
//  Created by Derrick Ho on 6/7/17.
//  Copyright © 2017 Derrick Ho. All rights reserved.
//

import Foundation
import UIKit

class OmnitureConsumer {
    static var count = 0
    static var label = UILabel(frame: CGRect(x: 0, y: 0, width: 1, height: 1))
    static func consume(_ obj: Omniture) {
        if label.superview == nil {
            UIApplication.shared.keyWindow!.addSubview(label)
        }
        label.accessibilityIdentifier = "omniture_uitest_\(count)" + obj.description
        count += 1
    }
}

enum Mode: Int {
    case pagename
    case module
}

class Omniture: CustomStringConvertible {
    var mode = Mode.pagename
    var name: String
    
    var description: String {
        let modeStr = mode == .pagename ? "pagename" : "module"
        return "mode: \(modeStr)"
            + "name: \(name)"
    }
    
    init(mode: Mode, name: String) {
        self.mode = mode
        self.name = name
    }
}
