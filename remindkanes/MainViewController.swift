//
//  ViewController.swift
//  remindkanes
//
//  Created by Bori Oludemi on 12/15/17.
//  Copyright © 2017 borikanes. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var mainTableView: UITableView!
    let cellIdentifier = "todoInfoCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupNavBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .automatic
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonClicked))
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = true
        searchController.searchBar.tintColor = .black
        searchController.searchBar.placeholder = "Search TODOs"
        
    }
    
    @objc private func addButtonClicked() {
        
    }

}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RKListTableViewCell
        
        
        return cell
    }
    
    
}

extension MainViewController: UITableViewDelegate {
    
}

