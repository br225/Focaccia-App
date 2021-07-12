//
//  RecipesViewController.swift
//  Focaccia-App
//
//  Created by ברוסלי סואעד  on 02/07/2021.
//

import UIKit

class RecipesViewController: UIViewController {

//    @IBOutlet weak var recipesSearchBar: UISearchBar!
//
//    @IBOutlet weak var recipesTableView: UITableView!
//
//
//    var recipes : [Recipe] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.recipesTableView?.delegate = self
//        self.recipesTableView?.dataSource = self
//        self.recipesTableView?.register(UINib(nibName: RecipesTableViewCell.identifier, bundle: .main), forCellReuseIdentifier: RecipesTableViewCell.identifier)
//    }
//
//    func loadRecipes(type:RecipeTag? = nil){
//        let manager = ApiManager()
//        let tags:[RecipeTag] = []
//        manager.getRecipes(callBake: { [weak self](recipes,error) in
//            if let err = error {
//                print(err.localizedDescription)
//                return
//            }
//            if !recipes.isEmpty {
//                self?.recipes = recipes
//                DispatchQueue.main.async {
//                    self?.recipesTableView.reloadData()
//                }
//            }
//
//        }, number: 100, tags: tags)
//    }
//    }
//
//extension RecipesViewController : UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        recipes.count
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath)-> CGFloat {
//        165
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell:RecipesTableViewCell = tableView.dequeueReusableCell(withIdentifier: RecipesTableViewCell.identifier, for:
//        indexPath) as! RecipesTableViewCell
//        let recipe = self.recipes[indexPath.row]
//        cell.populate(recipe: recipe)
//        return cell
//    }
}
