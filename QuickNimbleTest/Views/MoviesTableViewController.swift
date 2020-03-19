//
//  ViewController.swift
//  QuickNimbleTest
//
//  Created by Victor Catão on 18/03/20.
//  Copyright © 2020 Victor Catão. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MoviesDataHelper.getMovies().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell")
        
        let movie = MoviesDataHelper.getMovies()[indexPath.row]
        cell?.textLabel?.text = movie.title
        cell?.detailTextLabel?.text = movie.genreString()
        
        return cell!
    }
}
