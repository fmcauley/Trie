//
//  TrieTests.swift
//  TrieTests
//
//  Created by Frank McAuley on 10/27/20.
//

import XCTest
@testable import Trie

class TrieTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatTrieIsNotNil() throws {
        let trie = Trie()
        XCTAssertNotNil(trie)
    }
    
    func testThatATrieCanInsertValues() {
        let trie = Trie()
        let key = "ace"
        let value = "ofBase"
        trie.insert(key,value)
        let output = trie.root
        
        let key2 = "aces"
        let value2 = "clubs"
        trie.insert(key2, value2)
        
        let output2 = trie.root
        
        
        let key3 = "bat"
        let value3 = "baseball"
        trie.insert(key3, value3)
        
        let output3 = trie.root
        print("test")
        
    }
}
