//
//  ViewController.swift
//  Core Data
//
//  Created by Hamish Johnson on 2018-04-07.
//  Copyright © 2018 Hamish Johnson. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    var people: [Person] = []
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "The List"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let fetchRequest: NSFetchRequest<Person> = Person.fetchRequest()
        
        do {
            people = try context.fetch(fetchRequest)
        } catch {
            print("Could not fetch. \(error)")
        }
    }
    
    @IBAction func addName(_ sender: Any) {
        var textField: UITextField?
        let alert = UIAlertController(title: "Add Name", message: nil, preferredStyle: .alert)
        alert.addTextField { (UITextField) in
            textField = UITextField
        }
        alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { (_) in
            guard let textField = textField else {
                return
            }
            
            let person = Person(context: self.context)
            person.name = textField.text
            self.people.append(person)
            
            self.saveContext()
            self.tableView.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    func saveContext() {
        do {
            try context.save()
        } catch {
            print("Could not save. \(error)")
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = people[indexPath.row].value(forKeyPath: "name") as? String
        return cell
    }
}
