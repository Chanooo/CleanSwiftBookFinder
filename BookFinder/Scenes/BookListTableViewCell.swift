//
//  BookListTableViewCell.swift
//  BookFinder
//
//  Created by 18101004 on 2021/09/27.
//

import Foundation
import UIKit

class BookListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookImgeView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookDateLabel: UILabel!
    
    func bindData(book: Book) {
        
    }
    
}
