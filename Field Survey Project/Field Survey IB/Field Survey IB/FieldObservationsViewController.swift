//
//  FieldObservationsViewController.swift
//  Field Survey IB
//
//  Created by Nermina Jašarević on 12/10/21.
//

import UIKit

class FieldObservationsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let jsonFilename = "field_observations"
    var fieldObservations: FieldObservations?
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var fieldObservationsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        fieldObservations = FieldObservationsLoader.load(jsonFileName: jsonFilename)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldObservations?.observations.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldObservation", for: indexPath)
        
        if let fieldObservations = self.fieldObservations {
            let fieldObservation = fieldObservations.observations[indexPath.row]
            cell.textLabel?.font = .boldSystemFont(ofSize: 16.0)
            cell.textLabel?.text = fieldObservation.title
            cell.detailTextLabel?.font = .systemFont(ofSize: 14.0)
            cell.detailTextLabel?.text = dateFormatter.string(from:fieldObservation.date)
            cell.imageView?.image = UIImage(named: fieldObservation.classification.rawValue)
        }
        
        return cell
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? FieldObservationDetailViewController, let fieldObservations = self.fieldObservations, let indexPathForSelectedRow = fieldObservationsTableView.indexPathForSelectedRow {
            destinationViewController.fieldObservation = fieldObservations.observations[indexPathForSelectedRow.row]
            fieldObservationsTableView.deselectRow(at: indexPathForSelectedRow, animated: false)
        }
    }
}
