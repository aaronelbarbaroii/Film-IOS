//
//  FilmViewCell.swift
//  Film-IOS
//
//  Created by Mananas on 4/12/25.
//

import UIKit

class FilmViewCell: UITableViewCell {

    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterIMageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func render(with film: Film){
        titleLabel.text = film.Title
        yearLabel.text = film.Year
        posterIMageView.loadFrom(url: film.Poster)
    }

}
