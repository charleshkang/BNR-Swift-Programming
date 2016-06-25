//
//  ViewController.swift
//  ToDoList
//
//  Created by Charles Kang on 6/23/16.
//  Copyright © 2016 Charles Kang. All rights reserved.
//

import UIKit

enum UIAlertControllerStyle : Int {
    case ActionSheet
    case Alert
}

class ViewController: UIViewController {

    
    @IBOutlet var itemTextField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    let todoList = TodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }


    @IBAction func addButtonPressed(sender: UIButton)
    {
        if ((itemTextField.text?.isEmpty) != nil) {
            let alertController = UIAlertController(title: "Default AlertController", message: "A standard alert", preferredStyle: .Alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel) { (action:UIAlertAction!) in
            }
            alertController.addAction(cancelAction)
            
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action:UIAlertAction!) in
            }
            alertController.addAction(OKAction)
            
            self.presentViewController(alertController, animated: true, completion:nil)
        }

        guard let text = itemTextField.text else {
            return
        }
        
        todoList.addItem(text)
        itemTextField.text = ""
        tableView.reloadData()
    }
}