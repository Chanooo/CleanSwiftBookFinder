//
//  BookListTableViewCell.swift
//  BookFinder
//
//  Created by CNOO on 2021/09/27.
//

import Foundation
import UIKit

class BookListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var bookImgeView: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        bookImgeView.layer.masksToBounds = true
        bookImgeView.layer.cornerRadius = 16
        bookImgeView.layer.borderWidth = 1
        bookImgeView.layer.borderColor = UIColor.secondaryLabel.cgColor
    }
    
    func bindData(data: BookList.FetchBooks.ViewModel.DisplayedBook) {
        bookImgeView.setImage(from: data.imageUrl)
        bookTitleLabel.text = data.title
        bookAuthorLabel.text = data.author
        bookDateLabel.text = data.date
    }
    
}

class FetchingCell: UITableViewCell {
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
}
