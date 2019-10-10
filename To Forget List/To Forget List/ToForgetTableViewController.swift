//
//  ToForgetTableViewController.swift
//  To Forget List
//
//  Created by Fintopia Indonesia on 09/10/19.
//  Copyright © 2019 Clay4Seed. All rights reserved.
//

import UIKit

class ToForgetTableViewController: UITableViewController {

    var toForgetArray :  [ToForget] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toForgetArray = createToForget()

         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    func createToForget() -> [ToForget] {
        
        let model1 = ToForget()
        model1.title = "Shopping"
        
        let model2 = ToForget(title: "Smile", important: false)
        let model3 = ToForget(title: "Be Happy")
        model3.important = true
        
        return [model1,model2,model3]
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toForgetArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toForgetTableView", for: indexPath)
        
        let modelCell = toForgetArray[indexPath.row]
        
        if modelCell.important {
            cell.textLabel?.text = "📌" + modelCell.title
        }   else    {
            cell.textLabel?.text = "📋" + modelCell.title
        }

        return cell
    }
}
