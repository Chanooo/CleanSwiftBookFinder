//
//  UIImage+.swift
//  BookFinder
//
//  Created by 18101004 on 2021/09/28.
//

import Foundation
import UIKit

extension UIImage {

    func resizedImage(targetSize: CGSize) -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: targetSize))
        }
    }
}
