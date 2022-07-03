//
//  HomeViewController.swift
//  HomeWork2 06 v3
//
//  Created by Максим Кулагин on 02.07.2022.
//

import UIKit


class HomeViewController: UIViewController {
    
    @IBOutlet var userNameTF: UILabel!
    var userNameHome = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = userNameHome
    }
    
    @IBAction func logOutButton() {
    }
}
