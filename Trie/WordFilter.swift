//
//  WordFilter.swift
//  Trie
//
//  Created by Frank McAuley on 10/28/20.
//

import Foundation
class WordFilter : Trie {
    
    var wfRoot: WordFilterNode
    
    var prefixSuffix = [(prefix: String, suffix: String)]()
    
    override init() {
        self.wfRoot = WordFilterNode()
    }
    
    override func insert(_ key: String, _ value: String) {
        var current = wfRoot
        
        if let firstChar = key.first {
            current.prefix = String(firstChar)
        }
        
        if let lastChar = key.last {
            current.suffix = String(lastChar)
        }
        
        prefixSuffix.append((current.prefix,current.suffix))
        
        
        for x in key {
            let str = String(x)
            if current.children[str] == nil {
                current.children[str] = WordFilterNode()
            }
            current = current.children[str] as! WordFilterNode
        }
        current.value = value
    }
    
    func f(_ prefix: String, _ suffix: String) -> Bool {
        
        for x in prefixSuffix {
            if x.prefix == prefix && x.suffix == suffix {
                return true
            }
        }
       
        return false
    }
    
}
