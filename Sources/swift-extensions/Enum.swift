import Foundation

public extension CaseIterable {
    static func randomCase() -> Self {
        allCases.randomElement()!
    }
}
