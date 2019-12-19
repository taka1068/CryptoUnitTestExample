#!/bin/sh

#  setup.sh
#  CryptoUnitTestExample
#
#  Created by takanori on 2019/12/20.
#  Copyright © 2019 takanori. All rights reserved.

set -eu

swiftfilename="$SRCROOT/$TARGETNAME/HashTestSpec.generated.swift"

input='foo'
expected=$(printf "$input" | openssl dgst -binary -sha256 | openssl base64)

cat << EOF > "$swiftfilename"
enum HashTestSpec {
    static var input: String { "$input" }
    static var expected: String { "$expected" }
}
EOF
