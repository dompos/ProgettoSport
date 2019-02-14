//
//  Setting_ViewController.swift
//  SoccerBox
//
//  Created by Marco Ragozzino on 12/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit

class Setting_ViewController: UIViewController{
    
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
    
    @IBOutlet var date_1: UIDatePicker!
    @IBOutlet var date_2: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        date_1.setValue(UIColor.white, forKey: "textColor")
        date_2.setValue(UIColor.white, forKey: "textColor")
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
