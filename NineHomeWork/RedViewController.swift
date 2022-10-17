//
//  RedViewController.swift
//  NineHomeWork
//
//  Created by Александр Меренков on 14.10.2022.
//

import UIKit

class RedViewController: UIViewController {
    
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("RedViewController viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("RedViewController viewWillDisappear")
    }
    
//  MARK: - Actions

    @IBAction func handleBackNC(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
