//
//  SettingsViewController.swift
//  Programmatic-UI
//
//  Created by Andrei Shpartou on 28/11/2023.
//

import UIKit

struct AppKey {
    static let appColorKey = "app color"
}

class SettingsViewController: UIViewController {

    private let settingView = SettingsView()
    
    // data got picker view
    private let colors = ["Red", "Green", "Blue", "White"]
    
    override func loadView() {
        view = settingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        // configure delegate and datasource of pickerview
        settingView.pickerView.dataSource = self
        settingView.pickerView.delegate = self
        
        updateAppColor()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        updateAppColor()
    }
    
    private func updateAppColor() {
        if let colorName = UserDefaults.standard.object(forKey: AppKey.appColorKey) as? String {
            view.backgroundColor = UIColor(named: colorName)
            settingView.pickerView.selectRow(colors.firstIndex(of: colorName) ?? 0, inComponent: 0, animated: true)
        } else {
            let colorName = colors[0] // hard coding the first index
            view.backgroundColor = UIColor(named: colorName)
        }
    }
}

extension SettingsViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
}

extension SettingsViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let colorName = colors[row]
        view.backgroundColor = UIColor(named: colorName)
        
        // save color name to user defaults
        UserDefaults.standard.set(colorName, forKey: AppKey.appColorKey)
    }
}
