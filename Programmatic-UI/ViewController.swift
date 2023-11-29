//
//  ViewController.swift
//  Programmatic-UI
//
//  Created by Andrei Shpartou on 28/11/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemOrange
        
        // set up vc appearance
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        appearance.titleTextAttributes = textAttributes
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
        // set tittle of navigation bar
        navigationItem.title = "Programmatic UI"
        
    }
}

