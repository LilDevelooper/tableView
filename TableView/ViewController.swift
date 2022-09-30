//
//  ViewController.swift
//  TableView
//
//  Created by yunus emre vural on 30.09.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedHero = ""
    var selectedIndex = 0
    var heroNames = [String]()
    var heroLanes = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
        heroNames.append("Zed")
        heroNames.append("Talon")
        heroNames.append("Vayne")
        heroNames.append("Lee Sin")
        heroNames.append("Sona")
        
        heroLanes.append("Mid - Assassin")
        heroLanes.append("Mid - Assassin")
        heroLanes.append("Bottom - ADC")
        heroLanes.append("Jungle - Fighter")
        heroLanes.append("Bottom - Support")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        //Deprecated
        //cell.textLabel?text = "Test
        var content = cell.defaultContentConfiguration()
        content.text = heroNames[indexPath.row]
        content.secondaryText = heroLanes[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedHero = heroNames[indexPath.row]
        let locationOfHero = heroNames.firstIndex(of: selectedHero)
        selectedIndex = locationOfHero!
        
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let destination = segue.destination as! DetailsViewController
            destination.selectedHero = selectedHero
            destination.selectedIndex = selectedIndex
        }
    }
    
}

