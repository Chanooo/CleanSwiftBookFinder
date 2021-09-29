//
//  Seeds.swift
//  BookFinderTests
//
//  Created by CNOO on 2021/09/29.
//

@testable import BookFinder
import XCTest

struct Seeds
{
  struct Books
  {
    static let displayedBook =  BookList.FetchBooks.ViewModel.DisplayedBook(imageUrl: "http://books.google.com/books/content?id=mdwmAQAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api",
                                                                            title: "Swift",
                                                                            author: "Alexander Norman Jeffares",
                                                                            date: "1970")
    
    static let sampleBook: BookFinder.Book = BookFinder.Book(id: "mdwmAQAAMAAJ",
                                                             volumeInfo: BookFinder.VolumeInfo(title: "Swift",
                                                                                               subtitle: nil,
                                                                                               publisher: nil,
                                                                                               publishedDate: "1970",
                                                                                               description: nil,
                                                                                               authors: ["Alexander", "Norman", "Jeffares"],
                                                                                               imageLinks: BookFinder.ImageLink(smallThumbnail: "http://books.google.com/books/content?id=mdwmAQAAMAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api",
                                                                                                                                thumbnail: "http://books.google.com/books/content?id=mdwmAQAAMAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api"),
                                                                                               language: "en",
                                                                                               infoLink: "http://books.google.co.kr/books?id=mdwmAQAAMAAJ&dq=Swift&hl=&source=gbs_api"))
  }
}
