//
//  ColorsViewController.swift
//  Colors
//
//  Created by Nermina Jašarević on 10/1/21.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var colorTableView: UITableView!
    let colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    let colorValues = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    @IBOutlet weak var colorsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorTableView.delegate = self
        colorTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorsDetailViewController,
           let indexPath = colorsTableView = indexPathForSelectedRow {
            
            destination.color = colors[indexPath.row]
            destination.colorValue = colorValues[indexPath.row]
            
            colorsTableView.deselectRow(at: indexPath, animated: true)
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
