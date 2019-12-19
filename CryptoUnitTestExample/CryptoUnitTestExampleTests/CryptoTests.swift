//
//  CryptoTests.swift
//  CryptoUnitTestExampleTests
//
//  Created by takanori on 2019/12/20.
//  Copyright © 2019 takanori. All rights reserved.
//

import XCTest
@testable import CryptoUnitTestExample

class CryptoTests: XCTestCase {

    func testSHA256() {
        let input = HashTestSpec.input
        let hash = MyCrypto().sha256(input)
        let expected = HashTestSpec.expected
        XCTAssertEqual(hash, expected)
    }

}
