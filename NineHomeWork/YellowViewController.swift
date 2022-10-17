//
//  ViewController.swift
//  NineHomeWork
//
//  Created by Александр Меренков on 14.10.2022.
//

import UIKit

class YellowViewController: UIViewController {

//    MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("YellowViewController viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("YellowViewController viewWillDisappear")
    }

//  MARK: - Actions
    
    @IBAction func handleNextNC(_ sender: UIButton) {
        guard let vc = OrangeViewController.getVC() as? OrangeViewController else { return }
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func unwindToYellow(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
      
    }
}

