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
    
    //there's three impact styles
//    let impact = UIImpactFeedbackGenerator(style: .light)
    
//    let impact = UIImpactFeedbackGenerator(style: .medium)
    
//    let impact = UIImpactFeedbackGenerator(style: .heavy)
    
    /*Apple uses light impact everytime you get a message in the Messages app*/

    @IBAction func impactPressed(_ sender: Any) {
        impact.impactOccurred()
    }
    
    let selection = UISelectionFeedbackGenerator()
    
    //selection haptics are used for toggling switches, quite a light feeling compared to the others in the demo
    
    @IBAction func selectionPressed(_ sender: Any) {
        selection.selectionChanged()
    }
    
    // This would be the most realistic and relevant for our app. Could be used for ticket submission, warnings, etc.
    let notification = UINotificationFeedbackGenerator()
    
    @IBAction func successPressed(_ sender: Any) {
        notification.notificationOccurred(.success)
    }
    
    @IBAction func warningPressed(_ sender: Any) {
        notification.notificationOccurred(.warning)
    }
    @IBAction func errorPressed(_ sender: Any) {
        notification.notificationOccurred(.error)
    }
    
    //You can also create custom haptics! Check out CoreHaptics https://developer.apple.com/documentation/corehaptics
}

