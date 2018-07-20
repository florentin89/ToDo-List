//
//  ViewController.swift
//  ToDo-List
//
//  Created by Florentin on 20/07/2018.
//  Copyright © 2018 Florentin Lupascu. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

    let itemArray = ["Buy water", "Buy juice", "Buy eggs"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      
        // every time when you select a row will be checked
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            // if the row is selected then will be unchecked
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        
        // after you selected a row will be deselected with animation
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }

}

