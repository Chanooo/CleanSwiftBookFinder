//
//  ImageCachingManager.swift
//  BookFinder
//
//  Created by CNOO on 2021/09/28.
//

import Foundation
import UIKit

class ImageCachingManager: NSObject {
    static let shared = ImageCachingManager()
    
    var cachingList: [String: UIImage] = [:]
}
