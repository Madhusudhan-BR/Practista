//
//  ViewController.swift
//  Practista
//
//  Created by Madhusudhan B.R on 5/28/18.
//  Copyright © 2018 Madhusudhan B.R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let plusPhotoButton : UIButton = {
        let button = UIButton(type : .system)
        button.setBackgroundImage(#imageLiteral(resourceName: "plus_photo"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    let emailTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "email"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.06)
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    
    
    let usernameTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "name"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.06)
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    
    let passwordTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "pass"
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.backgroundColor = UIColor(white: 0, alpha: 0.06)
        tf.borderStyle = .roundedRect
        return tf
    }()
    
    let signupButton : UIButton = {
        
        let b = UIButton(type: .system)
        b.setTitle("Sign Up", for: .normal)
        b.backgroundColor = UIColor(red: 149/255, green: 204/255, blue: 247/255, alpha: 1)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitleColor(.white, for: .normal)
        return b
        
        
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(plusPhotoButton)
        view.addSubview(emailTextField)
        
        plusPhotoButton.heightAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        plusPhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusPhotoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        
        
//        emailTextField.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor, constant: 20).isActive = true
//        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
//        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
//        emailTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        setupScreen()
        
    }
    
    fileprivate func setupScreen() {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, usernameTextField, passwordTextField, signupButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        
        
        view.addSubview(stackView)
        
        stackView.heightAnchor.constraint(equalToConstant: 200)
        stackView.topAnchor.constraint(equalTo: plusPhotoButton.bottomAnchor, constant: 20).isActive = true
        stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

