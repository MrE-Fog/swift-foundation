//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2018 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//


@available(macOS 10.10, iOS 8.0, watchOS 2.0, tvOS 9.0, *)
extension UnsafeRawBufferPointer : DataProtocol {
    public var regions: CollectionOfOne<UnsafeRawBufferPointer> {
        return CollectionOfOne(self)
    }
}

@available(macOS 10.10, iOS 8.0, watchOS 2.0, tvOS 9.0, *)
extension UnsafeBufferPointer : DataProtocol where Element == UInt8 {
    public var regions: CollectionOfOne<UnsafeBufferPointer<Element>> {
        return CollectionOfOne(self)
    }
}
