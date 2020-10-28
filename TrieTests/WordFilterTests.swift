//
//  WordFilterTests.swift
//  TrieTests
//
//  Created by Frank McAuley on 10/28/20.
//

import XCTest
@testable import Trie
class WordFilterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testThatWordFilterIsNotNil() throws {
        let wf = WordFilter()
        XCTAssertNotNil(wf)
    }
    
    func testThatWordFilterCanInsertAValue() {
        let wf = WordFilter()
        wf.insert("abc", "testValue")
        
        let output = wf.find("abc")
        let expected = "testValue"
        
        XCTAssertEqual(output, expected)
    }
    
    func testThatWordFilterCanFilterAWordForAPrefixAndSuffix() {
        let wf = WordFilter()
        wf.insert("apple", "apple")
        let output = wf.f("a","e")
        let expected = true
        
        XCTAssertEqual(output, expected)
    }
}
