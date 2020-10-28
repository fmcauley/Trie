//
//  Trie.swift
//  Trie
//
//  Created by Frank McAuley on 10/27/20.
//

import Foundation
class Trie {
    
    var root: TrieNode
    
    init() {
        self.root = TrieNode()
    }
    
    func insert(_ key: String, _ value: String) {
        var current = root
        
        for x in key {
            let str = String(x)
            if current.children[str] == nil {
                current.children[str] = TrieNode()
            }
            current = current.children[str] ?? TrieNode()
        }
        current.value = value
    }
    
    func find(_ key: String) -> String? {
        
        var current = root
        
        for x in key {
            let str = String(x)
            if current.children[str] != nil {
                current = current.children[str] ?? TrieNode()
            } else {
                return nil
            }
        }
        
        return current.value
    }
    
}
