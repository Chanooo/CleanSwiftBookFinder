//
//  String+.swift
//  BookFinder
//
//  Created by 18101004 on 2021/09/28.
//

import Foundation
extension String {
    func jsonToObj<T:Codable>(model: T.Type) -> T? {
        var result: T? = nil
        do {
            let data = self.data(using: .utf8)!
//            let item = try JSONSerialization.jsonObject(with: data, options: [])
//            let oJSon = try JSONSerialization.data(withJSONObject: item, options: .prettyPrinted)
            result = try JSONDecoder().decode(T.self, from: data)
        } catch {
            debugPrint("🆘 파싱에러: \(error) \n\(error.localizedDescription)")
        }
        
        return result
    }
}
