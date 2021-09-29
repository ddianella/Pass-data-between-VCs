//
//  ViewController.swift
//  Callbacks for passing data
//
//  Created by Diana on 13.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func goToSecondVC(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let secondVC = storyboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController else { return }
        show(secondVC, sender: nil)
        
        secondVC.completion = { [unowned self] text in
            self.label.text = text
        }
    }
}

