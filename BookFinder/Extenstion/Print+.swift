//
//  Print+.swift
//  BookFinder
//
//  Created by CNOO on 2021/09/29.
//

import Foundation

public func debugPrint(_ object: Any) {
    #if DEBUG
    Swift.debugPrint(object)
    #endif
}

public func print(_ object: Any) {
    #if DEBUG
    Swift.print(object)
    #endif
}

public func printError(_ object: Any) {
    #if DEBUG
    Swift.print("❗️Error: \(object)")
    #endif
}
