//
//  ViewController.swift
//  MyToDoList
//
//  Created by Edgar Tinajero on 8/5/15.
//  Copyright (c) 2015 PV Comunicaciones S.A de C.V. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var itemTextField: UITextField!
    @IBOutlet weak var addButtonPressed: UITextField!
    let todoList = Todolist()

    @IBAction func addButtonPressed(sender: UIButton) {
        println("Agregando un elemento a la lista: \(itemTextField.text)")
        todoList.addItem(itemTextField.text!)
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

