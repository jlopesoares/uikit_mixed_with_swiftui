//
//  ViewController.swift
//  UIKit Mixed With SwiftUI
//
//  Created by João Pedro on 04/04/2022.
//

import SwiftUI
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        
        let openSettingsButton = UIButton(configuration: .bordered())
        openSettingsButton.setTitle("Open Settings", for: .normal)
        openSettingsButton.addTarget(self, action: #selector(openSettings), for: .touchUpInside)
        
        openSettingsButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(openSettingsButton)
        
        NSLayoutConstraint.activate([
            openSettingsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            openSettingsButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

//MARK: - Actions
extension ViewController {
    
    @objc func openSettings() {
        
        let swiftUIView = SettingsView()
        let hostingController = UIHostingController(rootView: swiftUIView)
        present(hostingController, animated: true, completion: nil)
        
    }
}

