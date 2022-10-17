//
//  PurpleViewController.swift
//  NineHomeWork
//
//  Created by Александр Меренков on 14.10.2022.
//

import UIKit

class PurpleViewController: UIViewController {
    
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("PurpleViewController viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("PurpleViewController viewWillDisappear")
    }
    
//  MARK: - Actions

    @IBAction func handleBackNC(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
