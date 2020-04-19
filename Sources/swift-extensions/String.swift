//
//  String.swift
//  loopover
//
//  Created by Ionel Lescai on 18/04/2020.
//  Copyright © 2020 Ionel Lescai. All rights reserved.
//

import Foundation

extension Character: Strideable {
    public typealias Stride = Int

    // https://stackoverflow.com/questions/39982335/creating-a-countableclosedrangecharacter
    public func distance(to other: Character) -> Character.Stride {
        let stride = Int(String(self).unicodeScalars.first!.value) - Int(String(other).unicodeScalars.first!.value)
        return abs(stride)
    }

    public func advanced(by n: Character.Stride) -> Character {
        return Character(UnicodeScalar(String(self).unicodeScalars.first!.value + UInt32(n))!)
    }
}

extension ClosedRange where Element == Character {

    var characters: [Character] { return Array(self) }
}
