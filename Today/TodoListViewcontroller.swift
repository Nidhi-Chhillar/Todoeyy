//
//  ViewController.swift
//  Todoeyy
//
//  Created by Nidhi Chiller on 14/03/19.
//  Copyright © 2019 Shrofile. All rights reserved.
//

import UIKit
class TodoListViewController: UITableViewController {
let itemArray = ["Find Mike","Buy Eggos","Kill Demagorgon"]
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    //Mark -Tableview DatasourceMethods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
  
        if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            
        }
        else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark

        }

        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

