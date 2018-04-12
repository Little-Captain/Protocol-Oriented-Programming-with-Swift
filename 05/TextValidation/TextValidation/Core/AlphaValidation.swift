//
//  AlphaValidation.swift
//  TextValidation
//
//  Created by Liu-Mac on 4/12/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

class AlphaValidation: TextValidationProtocol {
    
    let regExFindMatchString: String  = "^[a-zA-Z]{0,10}"
    let validationMessage: String = "Can only contain Alpha characters"
    
    static let sharedInstance = AlphaValidation()
    
    private init() {}
    
    
}
