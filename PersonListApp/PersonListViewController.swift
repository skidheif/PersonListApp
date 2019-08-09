//
//  PersonListViewController.swift
//  PersonListApp
//
//  Created by John Heifetz on 08/08/2019.
//  Copyright © 2019 heif_team. All rights reserved.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    private let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
    private let surnames = ["Smith", "Dow", "Isaacson", "Hudson", "Jenkins"]
    private let emailAndPhone = [["aaa@aaa.aa", "+1-111-111-11-11"],
                         ["bbb@bbb.bb", "+2-222-222-22-22"],
                         ["ccc@ccc.cc", "+3-333-333-33-33"],
                         ["ddd@ddd.dd", "+4-444-444-44-44"],
                         ["eee@eee.ee", "+5-555-555-55-55"]]
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return names[section] + " " + surnames[section]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return names.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "PersonInfo", for: indexPath)
        cell.textLabel?.text = emailAndPhone[indexPath.section][indexPath.row]
        cell.textLabel?.numberOfLines = 0

        return cell
    }
}
