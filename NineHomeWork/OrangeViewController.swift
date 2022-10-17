//
//  OrangeViewController.swift
//  NineHomeWork
//
//  Created by Александр Меренков on 14.10.2022.
//

import UIKit

class OrangeViewController: UIViewController {
    
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("OrangeViewController viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("OrangeViewController viewWillDisappear")
    }
    
//  MARK: - Actions

    @IBAction func handleNextNC(_ sender: UIButton) {
        guard let vc = PurpleViewController.getVC() as? PurpleViewController else { return }
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func handleBackNC(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
