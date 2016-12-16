//
//  TodoList.swift
//  MyToDoList
//
//  Created by Edgar Tinajero on 8/7/15.
//  Copyright (c) 2015 PV Comunicaciones S.A de C.V. All rights reserved.
//


class toDoList{

    extension TodoList : UITableViewDataSource {
        func tableView(tableView: UiTableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
        }
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        let item = items[indexPath.row]
    
        cell.textLabel!.text = item
        return cell
    }
}