import Foundation

extension Character: Strideable {
    public typealias Stride = Int

    public func distance(to other: Character) -> Character.Stride {
        let stride = Int(String(self).unicodeScalars.first!.value) - Int(String(other).unicodeScalars.first!.value)
        return abs(stride)
    }

    public func advanced(by n: Character.Stride) -> Character {
        return Character(UnicodeScalar(String(self).unicodeScalars.first!.value + UInt32(n))!)
    }
}

public extension ClosedRange where Element == Character {
    var characters: [Character] { return Array(self) }
}
