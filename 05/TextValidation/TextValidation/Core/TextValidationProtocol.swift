//
//  TextValidationProtocol.swift
//  TextValidation
//
//  Created by Liu-Mac on 4/9/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol TextValidationProtocol {
    
    /// 查询字符串中的有效子串
    var regExFindMatchString: String { get }
    /// 匹配提示语
    var validationMessage: String { get }
}

extension TextValidationProtocol {
    
    /// 确定整个字符串是否匹配的正则表达式
    var regExMatchingString: String {
        get {
            return regExFindMatchString + "$"
        }
    }
    
    /// 是否匹配
    func validateString(str: String) -> Bool {
        
        if str.range(of: regExMatchingString, options: .regularExpression, range: nil, locale: nil) != nil {
            return true
        } else {
            return false
        }
    }
    
    /// 查询子串结果字符串
    func getMatchingString(str: String) -> String? {
        
        if let match = str.range(of: regExFindMatchString, options: .regularExpression, range: nil, locale: nil) {
            return String(str[match])
        } else {
            return nil
        }
    }
}
