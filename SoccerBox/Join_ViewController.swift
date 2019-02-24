//
//  Join_ViewController.swift
//  SoccerBox
//
//  Created by Domenico Posillipo on 15/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit
var dett = false
class Join_ViewController: UIViewController {
    
    @IBAction func join(_ sender: UIButton) {
        let avviso = UIAlertController(title: "Match added to your list", message: "", preferredStyle: .actionSheet)
        avviso.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(avviso, animated: true, completion: nil)
    }
    
    
    @IBAction func det(_ sender: UIButton) {
        if !dett {
            dettagli.image = UIImage(named: "dettagliView")
            dett = true
        }else{
            dettagli.image = UIImage(named: "")
            dett = false
        }
    }
    @IBOutlet var dettagli: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

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
