//
//  WordFilterNode.swift
//  Trie
//
//  Created by Frank McAuley on 10/28/20.
//

import Foundation

class WordFilterNode : TrieNode {
    var prefix: String
    var suffix: String
    
    override init() {
        self.prefix =  ""
        self.suffix = ""
        super.init()
        self.children = [String: WordFilterNode]()
    }
    
}
