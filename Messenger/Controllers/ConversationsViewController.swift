//
//  ViewController.swift
//  Messenger
//
//  Created by OUT-Mishchenko1-DY on 20.04.2021.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let loginVC = LoginViewController()
            let navigationVC = UINavigationController(rootViewController: loginVC)
            
            navigationVC.modalPresentationStyle = .fullScreen
            present(navigationVC, animated: false)
        }
    }

}

