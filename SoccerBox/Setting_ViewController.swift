//
//  Setting_ViewController.swift
//  SoccerBox
//
//  Created by Marco Ragozzino on 12/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit

let fasciaOraria = [
    ("0","0"),
    ("1","1"),
    ("2","2"),
    ("3","3"),
    ("4","4"),
    ("5","5"),
    ("6","6"),
    ("7","7"),
    ("8","8"),
    ("9","9"),
    ("10","10"),
    ("11","11"),
    ("12","12"),
    ("13","13"),
    ("14","14"),
    ("15","15"),
    ("16","16"),
    ("17","17"),
    ("18","18"),
    ("19","19"),
    ("20","20"),
    ("21","21"),
    ("22","22"),
    ("23","23"),
    ("24","24")
]
//let fasciaOraria = ["uno", "due"]

class Setting_ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var pkfrom: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fasciaOraria.count
    }
    /*
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch component {
        case 0:
            return fasciaOraria[row].0
        case 1:
            return fasciaOraria[row].1
        default:
            return nil
        }
    }
    */
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        switch component {
        case 0:
            return NSAttributedString(string: fasciaOraria[row].0, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        case 1:
            return NSAttributedString(string: fasciaOraria[row].1, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        default:
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(fasciaOraria[row])
    }
    
    @IBAction func sunday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func saturday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func friday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func thursday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func wednesday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func tuesday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func monday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pkfrom.delegate = self
        pkfrom.dataSource = self
        
        
    
        // Do any additional setup after loading the view.
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
