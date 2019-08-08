//
//  PersonListViewController.swift
//  PersonListApp
//
//  Created by John Heifetz on 08/08/2019.
//  Copyright © 2019 heif_team. All rights reserved.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    struct Person {
        var name: String
        var surname: String
        var email: String
        var phone: String
    }
    
    private let names = ["John", "Aaron", "Tim", "Ted", "Steven"]
    private let surnames = ["Smith", "Dow", "Isaacson", "Hudson", "Jenkins"]
    private let emails = ["aaa@aaa.aa",
                 "bbb@bbb.bb",
                 "ccc@ccc.cc",
                 "ddd@ddd.dd",
                 "eee@eee.ee"]
    private let phones = ["+1-111-111-11-11",
                 "+2-222-222-22-22",
                 "+3-333-333-33-33",
                 "+4-444-444-44-44",
                 "+5-555-555-55-55"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "PersonName", for: indexPath)
        let person: Person = createPerson(indexPath: indexPath)
        cell.textLabel?.text = person.name + " " + person.surname
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    private func createPerson(indexPath: IndexPath) -> Person {
        let name: String = names[indexPath.row]
        let surname: String = surnames[indexPath.row]
        let email: String = emails[indexPath.row]
        let phone: String = phones[indexPath.row]
        let person = Person(name: name, surname: surname, email: email, phone: phone)
        
        return person
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailView = segue.destination as! DetailViewController
            let person: Person = createPerson(indexPath: indexPath)
            detailView.name = person.name
            detailView.surname = person.surname
            detailView.personEmail = person.email
            detailView.personPhone = person.phone
        }
    }

}
