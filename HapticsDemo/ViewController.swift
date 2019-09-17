//
//  ViewController.swift
//  HapticsDemo
//
//  Created by Sophie Aimsio on 2019-09-03.
//  Copyright © 2019 Sophie Aimsio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let impact = UIImpactFeedbackGenerator()

    @IBAction func impactPressed(_ sender: Any) {
        impact.impactOccurred()
    }
    
    let selection = UISelectionFeedbackGenerator()
    
    @IBAction func selectionFeedback(_ sender: Any) {
        selection.selectionChanged()
    }
}

