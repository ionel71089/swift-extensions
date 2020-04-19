import Foundation

public struct Array2D<T> {
    public enum Index {
        case row(Int)
        case column(Int)
    }

    public let columns: Int
    public let rows: Int
    fileprivate var array: [T]

    public init(columns: Int, rows: Int, initialValue: T) {
        self.columns = columns
        self.rows = rows
        array = .init(repeating: initialValue, count: rows * columns)
    }

    public subscript(column: Int, row: Int) -> T {
        get {
            array[row * columns + column]
        }
        set {
            array[row * columns + column] = newValue
        }
    }

    public subscript(slice: Index) -> [T] {
        get {
            switch slice {
            case let .row(row):
                return (0 ..< columns).map { self[row, $0] }

            case let .column(column):
                return (0 ..< rows).map { self[$0, column] }
            }
        }

        set {
            switch slice {
            case let .row(row):
                (0 ..< columns).forEach {
                    self[row, $0] = newValue[$0]
                }

            case let .column(column):
                (0 ..< rows).forEach {
                    self[$0, column] = newValue[$0]
                }
            }
        }
    }

    func getArray() -> [T] {
        array
    }
}
