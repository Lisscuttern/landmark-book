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
    
    var landMarkNames = [String]()
    var landMarkImages = [UIImage]()
    
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landMarkNames.append("Coloseum")
        landMarkNames.append("Great Wall")
        landMarkNames.append("Kremlin")
        landMarkNames.append("Stonhenge")
        landMarkNames.append("Taj Mahal")
        
        
        landMarkImages.append(UIImage(named: "landMarkBook_01.jpg")!)
        landMarkImages.append(UIImage(named: "landMarkBook_02.jpg")!)
        landMarkImages.append(UIImage(named: "landMarkBook_03.jpg")!)
        landMarkImages.append(UIImage(named: "landMarkBook_04.jpg")!)
        landMarkImages.append(UIImage(named: "landMarkBook_05.jpg")!)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return landMarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        
        //content.text = "Selom <3"
        content.text = landMarkNames[indexPath.row]
        //content.secondaryText = "Selom"
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        chosenLandmarkName = landMarkNames[indexPath.row]
        chosenLandmarkImage = landMarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "toDetailsVC"
        {
            let destinationVC = segue.destination as! DetailVC
            
            destinationVC.selectedLandmarkName = chosenLandmarkName
            destinationVC.selectedLandmarkImage = chosenLandmarkImage
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            self.landMarkNames.remove(at: indexPath.row)
            self.landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)

        }
    }
}

