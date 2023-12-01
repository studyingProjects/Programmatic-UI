//
//  ViewController.swift
//  Programmatic-UI
//
//  Created by Andrei Shpartou on 28/11/2023.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemOrange
        configureNavBar()
    }
    
    private func configureNavBar() {
        // set up vc appearance
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        appearance.titleTextAttributes = textAttributes
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
        // set tittle for navigation bar
        navigationItem.title = "Programmatic UI"
        
        // adding UIBarButtonItem to the navigation bar
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(showSettings(_:)))
    }
    
    @objc private func showSettings(_ sender: UIBarButtonItem) {
        // segue to the SettingsViewController
        let settingsVC = SettingsViewController()
        navigationController?.pushViewController(settingsVC, animated: true)
        
        // without NavigationController
        //present(settingsVC, animated: true)
        //settingsVC.modalPresentationStyle = .overCurrentContext
        //settingsVC.modalTransitionStyle = .flipHorizontal
    }
    
}

