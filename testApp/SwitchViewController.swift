//
//  SwitchViewController.swift
//  testApp
//
//  Created by Клоун on 31.01.2022.
//

import UIKit

class SwitchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func change1(_ sender: UISwitch) {
        if sender.isOn == true {
            let vc = storyboard?.instantiateViewController(withIdentifier: "MyVC") as! ViewController
            present(vc, animated: true, completion: nil)
            vc.answer.text = "Just Do It!"
        }
    
    }
    
    @IBAction func change2(_ sender: UISwitch) {
        if sender.isOn == true {
            let vc = storyboard?.instantiateViewController(withIdentifier: "MyVC") as! ViewController
            present(vc, animated: true, completion: nil)
            vc.answer.text = "Change Your Mind"
        }
    }
    
}
