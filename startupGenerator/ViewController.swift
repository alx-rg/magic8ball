//
//  ViewController.swift
//  startupGenerator
//
//  Created by Alexandre Ross-Gautron on 2023-04-04.
//

import UIKit

class ViewController: UIViewController {

    let startupNames = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Shopify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let categories = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]
    
    let superheroNames = ["Superman", "Spider-Man", "Wonder Woman", "Batman", "Captain America", "Iron Man", "Black Widow", "Thor", "Hulk", "Flash", "Aquaman", "Green Lantern"]
    
    let superpowers = ["Flight", "Super strength", "Super speed", "Telepathy", "Invisibility", "Teleportation", "Time manipulation", "Heat vision", "Regeneration", "Telekinesis", "Weather control", "Energy projection"]
    
    let outfits = ["Red cape", "Web-slinging suit", "Lasso of Truth", "Batsuit", "Star-spangled costume", "Iron suit", "Black Widow suit", "Mjolnir", "Green gamma-infused skin", "Flash costume", "Aquaman trident", "Power ring"]
    
    func generateStartup() {
        let randomName = Int.random(in: 0..<startupNames.count)
        let randomCategory = Int.random(in: 0..<categories.count)
        startupName.text = startupNames[randomName]
        category.text = categories[randomCategory]
    }
    
    func generateSuperHero() {
            let selectedIndex = superSegControl.selectedSegmentIndex
            var list: [String]
            
            switch selectedIndex {
            case 0:
                list = superheroNames
            case 1:
                list = superpowers
            case 2:
                list = outfits
            default:
                list = []
            }
            
            if !list.isEmpty {
                let randomIndex = Int.random(in: 0..<list.count)
                superDisplay.text = list[randomIndex]
            } else {
                superDisplay.text = "No list selected"
            }
        }
    
    @IBOutlet weak var startupName: UILabel!
    
    @IBOutlet weak var category: UILabel!
    
    @IBOutlet weak var superDisplay: UILabel!
    
    @IBOutlet weak var generate: UIButton!
    
    @IBAction func generateTapped(_ sender: Any) {
        generateStartup()
        generateSuperHero()
    }
    
    
    @IBOutlet weak var superSegControl: UISegmentedControl!
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else {return}
        generateStartup()
        generateSuperHero()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

