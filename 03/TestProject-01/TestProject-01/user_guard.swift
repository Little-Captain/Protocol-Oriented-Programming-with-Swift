//
//  user_guard.swift
//  TestProject-01
//
//  Created by Liu-Mac on 3/9/18.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

struct Blog {
    var author: String?
    var name: String?
    var url: NSURL?
}

func blogInfo(blog: Blog?) {
    if let blog = blog {
        if let author = blog.author,
            let name = blog.name {
            print("BLOG:")
            print(" Author: \(author)")
            print(" name: \(name)")
        } else {
            print("Author or name is nil")
        }
    } else {
        print("Blog is nil")
    }
}

func blogInfo2(blog: Blog?) {
    
    guard let blog = blog else {
        print("Blog is nil")
        return
    }
    
    guard let author = blog.author, let name = blog.name else {
        print("Author or name is nil")
        return
    }
    
    print("BLOG:")
    print(" Author: \(author)")
    print(" name: \(name)")
}
