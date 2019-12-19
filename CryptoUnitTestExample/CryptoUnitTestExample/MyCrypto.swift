//
//  MyCrypto.swift
//  CryptoUnitTestExample
//
//  Created by takanori on 2019/12/19.
//  Copyright © 2019 takanori. All rights reserved.
//

import Foundation
import CommonCrypto

final class MyCrypto {
    func sha256(_ string: String) -> String {
        var hash = [UInt8](repeating: 0,  count: Int(CC_SHA256_DIGEST_LENGTH))

        let data = string.data(using: .utf8)!
        data.withUnsafeBytes { pointer -> Void in
            CC_SHA256(pointer.baseAddress, CC_LONG(data.count), &hash)
        }
        return Data(hash).base64EncodedString()
    }
}
