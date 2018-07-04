//
//  strategy.swift
//  TestProject
//
//  Created by qxxl007 on 2018/7/4.
//  Copyright © 2018 Liu-Mac. All rights reserved.
//

import Foundation

protocol CompressionStrategy {
    
    func compressFiles(_ filePaths: [String])
}

struct ZipCompressionStrategy: CompressionStrategy {
    
    func compressFiles(_ filePaths: [String]) {
        
        print("Using Zip Compression")
    }
}

struct RarCompressionStrategy: CompressionStrategy {
    
    func compressFiles(_ filePaths: [String]) {
        
        print("Using RAR Compression")
    }
}

class CompressContent {
    
    var strategy: CompressionStrategy
    
    init(strategy: CompressionStrategy) {
        
        self.strategy = strategy
    }
    
    func compressFiles(_ filePaths: [String]) {
        
        strategy.compressFiles(filePaths)
    }
}
