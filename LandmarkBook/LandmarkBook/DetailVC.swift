//
//  DetailVC.swift
//  LandmarkBook
//
//  Created by Ozan İncedayı on 23.01.2023.
//

import UIKit

class DetailVC: UIViewController
{
    @IBOutlet weak var landMarkLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        landMarkLabel.text = "\(selectedLandmarkName)"
        imageView.image = selectedLandmarkImage

    }
    

}
