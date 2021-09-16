//===--- ProtocolDispatch.swift -------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2017 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

import TestsUtils

public let ProtocolDispatch = BenchmarkInfo(
  name: "ProtocolDispatch",
  runFunction: run_ProtocolDispatch,
  tags: [.validation, .abstraction])

@inline(never)
public func run_ProtocolDispatch(_ n: Int) {

  let x = someProtocolFactory()

  for _ in 0...100_000 * n {
    _ = x.getValue()
  }
}
