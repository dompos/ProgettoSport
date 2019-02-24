//
//  CreateMatchViewController.swift
//  SoccerBox
//
//  Created by Antonio Di Maio on 14/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit

class CreateMatchViewController: UIViewController {
    @IBOutlet var place: UITextField!
    
    @IBAction func create(_ sender: UIButton) {
        let avviso = UIAlertController(title: "Match added to your list", message: "", preferredStyle: .actionSheet)
        avviso.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(avviso, animated: true, completion: nil)
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Create"
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
