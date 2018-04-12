//
//  AlphaNumericValidation.swift
//  TextValidation
//
//  Created by Liu-Mac on 4/12/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

class AlphaNumericValidation: TextValidationProtocol {
    
    static let sharedInstance = AlphaNumericValidation()
    private init() {}
    
    let regExFindMatchString: String = "^[a-zA-Z0-9]{0,15}"
    let validationMessage: String = "Can only contain Alpha Numeric characters"
}
