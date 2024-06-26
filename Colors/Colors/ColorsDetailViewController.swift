//
//  ColorsDetailViewController.swift
//  Colors
//
//  Created by Nermina Jašarević on 10/15/21.
//

import UIKit

class ColorsDetailViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    var color: String?
    var colorValue: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorLabel.text = color
        
        self.view.backgroundColor = colorValue
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
