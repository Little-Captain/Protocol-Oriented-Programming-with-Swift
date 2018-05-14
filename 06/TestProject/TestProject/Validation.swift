//
//  Validation.swift
//  TestProject
//
//  Created by qxxl007 on 2018/5/14.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

func getValidator(alphaCharacters: Bool, numericCharacters: Bool) -> TextValidationProtocol? {
    
    if alphaCharacters && numericCharacters {
        return AlphaNumericValidation.sharedInstance
    } else if alphaCharacters && !numericCharacters {
        return AlphaValidation.sharedInstance
    } else if !alphaCharacters && numericCharacters {
        return NumericValidation.sharedInstance
    } else {
        return nil
    }
}

class AlphaValidation: TextValidationProtocol {
    
    static let sharedInstance = AlphaValidation()
    private init() {}
    
    let regExFindMatchString: String = "^[a-zA-Z]{0,10}"
    let validationMessage: String = "Can only contain Alpha characters."
}

class AlphaNumericValidation: TextValidationProtocol {
    
    static let sharedInstance = AlphaNumericValidation()
    private init() {}
    
    let regExFindMatchString: String = "^[a-zA-Z0-9]{0,10}"
    let validationMessage: String = "Can only contain Alpha Numeric characters."
}

class NumericValidation: TextValidationProtocol {
    
    static let sharedInstance = NumericValidation()
    private init() {}
    
    let regExFindMatchString: String = "^[0-9]{0,10}"
    let validationMessage: String = "Can only contain only Alpha and Numeric characters."
}
