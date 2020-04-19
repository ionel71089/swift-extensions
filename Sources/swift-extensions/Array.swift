//
//  Array.swift
//  loopover
//
//  Created by Ionel Lescai on 18/04/2020.
//  Copyright © 2020 Ionel Lescai. All rights reserved.
//

import Foundation

public extension Array {
    func shifted(by shiftAmount: Int) -> Array<Element> {
        // 1
        guard count > 0, (shiftAmount % count) != 0 else { return self }

        // 2
        let moduloShiftAmount = shiftAmount % count
        let negativeShift = shiftAmount < 0
        let effectiveShiftAmount = negativeShift ? moduloShiftAmount + count : moduloShiftAmount

        // 3
        let shift: (Int) -> Int = { $0 + effectiveShiftAmount >= self.count ? $0 + effectiveShiftAmount - self.count : $0 + effectiveShiftAmount }

        // 4
        return enumerated().sorted(by: { shift($0.offset) < shift($1.offset) }).map { $0.element }
    }
}
