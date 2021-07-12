//
//  HomeTableViewController.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 02/07/2021.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    let sections = ["FEATURED RECIPES", "LATEST"]
    
    let item = [["pasta","pasta","pasta"] , ["pasta","pasta","pasta","pasta"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let recipesCell = UINib.init(nibName: "RecipesCell", bundle: nil)
        self.tableView.register(recipesCell, forCellReuseIdentifier: "RecipesCell")

        let featureCell = UINib.init(nibName: "FeatureCell", bundle: nil)
        self.tableView.register(featureCell, forCellReuseIdentifier: "FeatureCell")
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 260
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item[section].count

}
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell ()
        
        if  let section = CellSection(rawValue: indexPath.section){
            switch section {
            case .featured:
                let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as! FeatureCell
                return cell
            case .latest:
                let cell = tableView.dequeueReusableCell(withIdentifier: "RecipesCell", for: indexPath) as! RecipesCell
    
            }
        }
        
    return cell
        
    }
}

enum CellSection: Int {
    case featured = 0, latest
}

