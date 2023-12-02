//
//  ViewController.swift
//  Programmatic-UI
//
//  Created by Andrei Shpartou on 28/11/2023.
//

import UIKit

class MainViewController: UIViewController {

    private let mainView = MainView()
    
    // if doing programmatic UI implement and setup the view
    // in loadView()
    // loadView() gets called before ViewDidLoad()
    // loadView() sets up the initial view of the controller
    // do not call super when using overriding loadView()
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() { // called  on initial load, only once
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemOrange
        configureNavBar()
        
        // add target action for reset button
        mainView.resetButton.addTarget(self, action: #selector(resetAppColor(_ :)), for: .touchUpInside)
        
        updateAppColor()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateAppColor()
    }
    
    private func updateAppColor() {
        if let colorName = UserDefaults.standard.object(forKey: AppKey.appColorKey) as? String {
            view.backgroundColor = UIColor(named: colorName)
        }
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
    
    @objc private func resetAppColor(_ sender: UIButton) {
        print("reset app color")
    }
    
}

