//
//  FieldObservationDetailViewController.swift
//  Field Survey IB
//
//  Created by Nermina Jašarević on 12/10/21.
//

import UIKit

class FieldObservationDetailViewController: UIViewController {
    
    var fieldObservation: FieldObservation?
    let dateFormatter = DateFormatter()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        // Do any additional setup after loading the view.
        if let fieldObservation = fieldObservation {
            classificationImageView.image = UIImage(named: fieldObservation.classification.rawValue)
            titleLabel.font = .boldSystemFont(ofSize: 16.0)
            titleLabel.text = fieldObservation.title
            dateLabel.font = .systemFont(ofSize: 14.0)
            dateLabel.text = dateFormatter.string(from: fieldObservation.date)
            descriptionTextView.font = .systemFont(ofSize: 14.0)
            descriptionTextView.text = fieldObservation.description
        }
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
