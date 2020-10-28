//
//  TrieNodeTests.swift
//  TrieTests
//
//  Created by Frank McAuley on 10/27/20.
//

import XCTest
@testable import Trie

class TrieNodeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTrieNodeIsNotNil() throws {
        let tn = TrieNode()
        XCTAssertNotNil(tn)
    }
}
