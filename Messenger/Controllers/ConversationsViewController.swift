//
//  ViewController.swift
//  Messenger
//
//  Created by OUT-Mishchenko1-DY on 20.04.2021.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
      
    }

    private func validateAuth() {
        
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let loginVC = LoginViewController()
            let navigationVC = UINavigationController(rootViewController: loginVC)
            
            navigationVC.modalPresentationStyle = .fullScreen
            present(navigationVC, animated: false)
        }
    }
}

