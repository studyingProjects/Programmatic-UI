//
//  SettingsView.swift
//  Programmatic-UI
//
//  Created by Andrei Shpartou on 01/12/2023.
//

import UIKit

class SettingsView: UIView {
    // lazy property initializer
    public lazy var pickerView: UIPickerView = {
        let pickerView = UIPickerView()
        return pickerView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setupPickerViewConstraints()
    }
    
    private func setupPickerViewConstraints() {
        addSubview(pickerView)
        
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pickerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            pickerView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
}
