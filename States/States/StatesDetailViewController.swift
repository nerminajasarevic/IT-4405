//
//  StatesDetailViewController.swift
//  States
//
//  Created by Nermina Jašarević on 11/12/21.
//

import UIKit

class StatesDetailViewController: UIViewController {

    @IBOutlet weak var stateLabel: UILabel!
    
    var state = String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        stateLabel.text = states[state]
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
