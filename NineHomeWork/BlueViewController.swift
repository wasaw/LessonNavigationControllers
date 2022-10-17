//
//  BlueViewController.swift
//  NineHomeWork
//
//  Created by Александр Меренков on 14.10.2022.
//

import UIKit

class BlueViewController: UIViewController {
    
//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("BlueViewController viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("BlueViewController viewWillDisappear")
    }
    
//  MARK: - Actions

    
    @IBAction func handleNextNC(_ sender: UIButton) {
        guard let vc = GreenViewController.getVC() as? GreenViewController else { return }
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func unwindToBlue(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
      
    }
}
