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
        label.backgroundColor = .systemBlue
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        label.text = "label"
        return label
    }() // () creates a closure and calls simultaneously
    
    // create a button
    public lazy var resetButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemYellow
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.systemRed, for: .normal)
        return button
    }()
    
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
        setupMessageLabelConstraints()
        setupResetButtonConstraints()
    }
    
    private func setupMessageLabelConstraints() {
        // add the messageLabel to the ainView
        addSubview(messageLabel) // return the messageLabel we created above
        // set constraints for the messageLabel
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            // set top anchor 20 points from the safe area top of MainView
            messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20.0),
            // set padding at the leading edge of the MainView
            messageLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20.0),
            // set padding at the trailing edge of the MainView
            messageLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20.0)
        ])
    }
    // another way to add constrains one by one
    //messageLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20.0).isActive = true
    
    private func setupResetButtonConstraints() {
        addSubview(resetButton)
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            resetButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            resetButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 40.0)
        ])
    }
}
