//
//  MainView.swift
//  Programmatic-UI
//
//  Created by Andrei Shpartou on 30/11/2023.
//

import UIKit

class MainView: UIView {
    
    // create a label
    public lazy var messageLabel: UILabel = {
        let label = UILabel()
        return label
    }() // () creates a closure and calls simultaneously
    
    // create a button
    

    // init(frame: ) gets called if view is done programmatically
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    // if this view get initialized from storyboard
    // this initializer gets called
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        
    }
    
}
