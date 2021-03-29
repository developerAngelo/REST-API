//
//  MoviesContentViewController.swift
//  REST-API
//
//  Created by Ruthlyn Huet on 3/29/21.
//

import UIKit

class MoviesContentViewController: UIViewController {
    
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var overview: UILabel!
    @IBOutlet weak var year: UILabel!
    
    public var movieData: Movie? = nil
    var imgPoster = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayMovieContent()
    }
    
    func displayMovieContent(){
        guard let rate = movieData?.rate else {return}
        poster.image = imgPoster
        name.text = movieData?.title
        year.text = movieData?.year
        rating.text = String(rate)
        overview.text = movieData?.overview
    }

}
