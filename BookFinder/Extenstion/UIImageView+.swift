//
//  UIImageView+.swift
//  BookFinder
//
//  Created by 18101004 on 2021/09/28.
//

import Foundation
import UIKit

extension UIImageView {
    
    func setImage(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        
        // Check Image Caching
        let cachingManager = ImageCachingManager.shared
        if let image = cachingManager.cachingList[url.absoluteString] {
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        } else {
            URLSession.shared.dataTask(with: url) { data, response, error in
                guard
                    let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                    let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                    let data = data, error == nil,
                    let image = UIImage(data: data)?.resizedImage(targetSize: CGSize(width: 80, height: 80))
                    else { return }
                
                // Caching Image First
                cachingManager.cachingList[url.absoluteString] = image
                DispatchQueue.main.async() { [weak self] in
                    self?.image = image
                }
            }.resume()
        }
        
    }
    
    func setImage(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        setImage(from: url, contentMode: mode)
    }
}
