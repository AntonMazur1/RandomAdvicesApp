//
//  ViewController.swift
//  testApp
//
//  Created by Клоун on 29.01.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var answer: UILabel!
    let url = "https://8ball.delegator.com/magic/JSON/magic"
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    func getAnswer(url: String) {
         guard let url = URL(string: url) else {return}
         
         let session = URLSession.shared
         session.dataTask(with: url) { (data, response, error) in
             guard let data = data else {return}
             
             do {
                 let json = try JSONDecoder().decode(Magic.self.MyStruct, from: data)
                 DispatchQueue.main.async {
                     self.answer.text = json.magic.answer
                 }
             }catch{
                 print("Error")
             }
         }.resume()
     }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getAnswer(url: url)
    }
    
}

