//
//  GreenViewController.swift
//  NineHomeWork
//
//  Created by Александр Меренков on 14.10.2022.
//

import UIKit

class GreenViewController: UIViewController {
    
//    MARK: - Properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("GreenViewController viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("GreenViewController viewWillDisappear")
    }
    
//  MARK: - Actions

    @IBAction func handleNextNC(_ sender: UIButton) {
        guard let vc = RedViewController.getVC() as? RedViewController else { return }
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func handleBackNC(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}
