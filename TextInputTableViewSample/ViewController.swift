//
//  ViewController.swift
//  TextInputTableViewSample
//
//  Created by ogaoga on 2019/12/16.
//  Copyright © 2019 ogaoga.org. All rights reserved.
//

import UIKit

struct CellData {
    var title: String
    var text: String
}

class ViewController: UITableViewController, UITextFieldDelegate {
    
    let data = [
        CellData(title: "Question1", text: ""),
        CellData(title: "Question2", text: ""),
        CellData(title: "Question3", text: ""),
        CellData(title: "Question4", text: ""),
        CellData(title: "Question5", text: ""),
        CellData(title: "Question6", text: ""),
        CellData(title: "Question7", text: ""),
        CellData(title: "Question8", text: "")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Delegate
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // Datasource
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.titleLabel.text = data[indexPath.row].title
        cell.textField.tag = indexPath.row
        
        return cell
    }
    
    // TextField
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        let tag = textField.tag
        if let nextTextField = view.viewWithTag(tag + 1) {
            nextTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        
        return true
    }
}
