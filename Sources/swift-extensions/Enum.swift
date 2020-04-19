//
//  Enum.swift
//  loopover
//
//  Created by Ionel Lescai on 18/04/2020.
//  Copyright © 2020 Ionel Lescai. All rights reserved.
//

import Foundation

extension CaseIterable {
    static func randomCase() -> Self {
        allCases.randomElement()!
    }
}
