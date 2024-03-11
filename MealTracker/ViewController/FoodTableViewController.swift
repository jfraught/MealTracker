//
//  FoodTableViewController.swift
//  MealTracker
//
//  Created by Jordan Fraughton on 3/10/24.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] {
        var breakfast = Meal(name: "breakfast", food: [Food(name: "eggs", description: "scambled"), Food(name: "bacon", description: "fried"), Food(name: "toast", description: "well done")])
        var lunch = Meal(name: "lunch", food: [Food(name: "sandwich", description: "turkey"), Food(name: "twinkie", description: "original"), Food(name: "chips", description: "salt and vinegar")])
        var dinner = Meal(name: "dinner", food: [Food(name: "spaghetti", description: "with meatballs"), Food(name: "bread", description: "garlic"), Food(name: "carrots", description: "steamed")])

        return [breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        var meal = meals[indexPath.section].food
        var food = meal[indexPath.row]

        var content = cell.defaultContentConfiguration()
        content.text =  food.name
        content.secondaryText = food.description
        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        meals[section].name
    }
}
