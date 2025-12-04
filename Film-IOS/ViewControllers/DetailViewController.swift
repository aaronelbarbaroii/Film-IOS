//
//  DetailViewController.swift
//  Film-IOS
//
//  Created by Mananas on 4/12/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var posterIMageView: UIImageView!
    
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
   
    @IBOutlet weak var durationLabel: UILabel!
    
    @IBOutlet weak var directorLabel: UILabel!
    
    @IBOutlet weak var genreLabel: UILabel!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    var film: Film!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        findFilmsById()
        
        
    }
    
    func loadData() {
        navigationItem.title = film.Title
        posterIMageView.loadFrom(url: film.Poster)
        yearLabel.text = film.Year
        durationLabel.text = film.Runtime
        synopsisLabel.text = film.Plot
        directorLabel.text = film.Director
        genreLabel.text = film.Genre
        countryLabel.text = film.Country
    }
    
    func findFilmsById() {
        Task {
            film = await FilmProvider.findFilmsById(query: film.imdbID)
            //print(film)
            DispatchQueue.main.async {
                self.loadData()
            }
        }
    }
    
    
}
