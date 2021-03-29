//
//  MoviesViewController.swift
//  REST-API
//
//  Created by Ruthlyn Huet on 3/29/21.
//

import UIKit

class MoviesViewController: UIViewController {
        
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel = MovieViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadPopularMoviesData()
    }
    
    func loadPopularMoviesData(){
        viewModel.fetchPopularMoviesData { [weak self] in
            self?.tableView.rowHeight = 148
            self?.tableView.dataSource = self
            self?.tableView.reloadData()
        }
    }
    


}

//Mark: - TableView Setup
extension MoviesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection(section: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell
        let movie = viewModel.cellForRowAt(indexPath: indexPath)
        cell.setCellWithValuesOf(movie)
        return cell
    }

    
}
