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
}
