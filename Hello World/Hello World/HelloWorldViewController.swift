//
//  HelloWorldViewController.swift
//  Hello World
//
//  Created by Nermina Jašarević on 10/22/21.
//

import UIKit

class HelloWorldViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome!"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func helloPressed(_ sender: UIButton) {
        welcomeLabel.text = "Hello World!"
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        welcomeLabel.text = ""
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
