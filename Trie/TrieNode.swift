//
//  TrieNode.swift
//  Trie
//
//  Created by Frank McAuley on 10/27/20.
//

import Foundation
class TrieNode {
    var value: String?
    var children:[String: TrieNode]
    
    init() {
        self.children = [String: TrieNode]()
    }
}
