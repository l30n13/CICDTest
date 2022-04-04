//
//  ViewController.swift
//  CICDTest
//
//  Created by Mahbubur Rashid on 29/3/22.
//

import UIKit
import AppCenterCrashes

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if Crashes.hasCrashedInLastSession {
            let alertVC = UIAlertController(title: "Error", message: "Sorry", preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .cancel))
            present(alertVC, animated: true)
        }
    }
    
    @IBAction func clickToCrash(_ sender: Any) {
        Crashes.generateTestCrash()
    }
}

