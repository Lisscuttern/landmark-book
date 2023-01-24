//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Ozan İncedayı on 23.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        
        content.text = "Selom <3"
        //content.secondaryText = "Selom"
        cell.contentConfiguration = content
        
        return cell
    }
}

