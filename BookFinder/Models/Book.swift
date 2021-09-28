//
//  Book.swift
//  BookFinder
//
//  Created by CNOO on 2021/09/27.
//

import Foundation

struct Book: Codable {
    let id: String
    let volumeInfo: VolumeInfo?
}

struct VolumeInfo: Codable {
    let title: String?
    let subtitle: String?
    let publisher: String? // 출판사
    let publishedDate: String? // 출판일 "2018-03-14"
    let description: String? // 설명
    let authors: [String]? // ["박준석"],
    let imageLinks: ImageLink?
    let language: String?
    let infoLink: String?
}


struct ImageLink: Codable {
    let smallThumbnail: String?
    let thumbnail: String?
}
