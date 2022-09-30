//
//  DetailsViewController.swift
//  TableView
//
//  Created by yunus emre vural on 30.09.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var selectedHero = ""
    var selectedIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = selectedHero
        
        var heroPictures = [UIImage]()
        
        heroPictures.append(UIImage(named: "zed")!)
        heroPictures.append(UIImage(named: "talon")!)
        heroPictures.append(UIImage(named: "vayne")!)
        heroPictures.append(UIImage(named: "leesin")!)
        heroPictures.append(UIImage(named: "sona")!)
        
        let selectedPicture = heroPictures[selectedIndex]
        
        imageView.image = selectedPicture
        
    }
    
    
}
