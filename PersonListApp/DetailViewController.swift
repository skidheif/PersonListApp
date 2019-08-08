//
//  DetailViewController.swift
//  PersonListApp
//
//  Created by John Heifetz on 08/08/2019.
//  Copyright © 2019 heif_team. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var usernameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    
    var name: String!
    var surname: String!
    var personEmail: String!
    var personPhone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = name + " " + surname
        emailLabel.text = "Email: " + personEmail
        phoneLabel.text = "Phone: " + personPhone
    }

}
