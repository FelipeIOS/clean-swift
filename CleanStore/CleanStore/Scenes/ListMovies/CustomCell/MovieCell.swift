//
//  MovieCell.swift
//  CleanStore
//
//  Created by Felipe Miranda on 14/01/20.
//  Copyright © 2020 Felipe Miranda. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(movie: MovieElement) {
        
        self.nameLabel.text = movie.title
        self.yearLabel.text = movie.releaseYear
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
