//
//  DisplayNameValidation.swift
//  TextValidation
//
//  Created by Liu-Mac on 4/12/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

class DisplayNameValidation: TextValidationProtocol {
    
    static let sharedInstance = DisplayNameValidation()
    private init() {}
    
    let regExFindMatchString: String = "^[\\s?[a-zA-Z0-9\\-_\\s]]{0,15}"
    let validationMessage: String = "Display Name can contain only contain Alphanumeric Characters"
}
