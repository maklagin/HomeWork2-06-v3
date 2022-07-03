//
//  ViewController.swift
//  HomeWork2 06 v3
//
//  Created by Максим Кулагин on 02.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var txtUserName: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    private let userName = "Debash"
    private let password = "Swift"

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let settingsViewContoller = segue.destination as? HomeViewController else { return }
        settingsViewContoller.userNameHome = userName
        
        guard let gradientLayer = segue.destination as? HomeViewController else { return }
        gradientLayer.view.backgroundColor = .systemCyan
    }
    
    @IBAction func forgotUserNameButton() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your User name is Debash 😉", preferredStyle: .alert
        )
        let ok = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordButton() {
        let alert = UIAlertController(
            title: "Oops!",
            message: "Your Password is Swift 😉",
            preferredStyle: .alert
        )
        
        let ok = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func clickLogIn() {
        if userName == txtUserName.text! && password == txtPassword.text! {
            
            let vc = storyboard?.instantiateViewController(
                withIdentifier: "HomeViewController"
            )
            navigationController?.pushViewController(vc!, animated: true)
        } else {
            let alert = UIAlertController(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                preferredStyle: .alert
            )
            let ok = UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            )
            alert.addAction(ok)
            present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func callKeyboard(_ sender: Any) {
        txtUserName.resignFirstResponder()
        txtPassword.resignFirstResponder()
    }
}
