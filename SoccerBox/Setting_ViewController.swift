//
//  Setting_ViewController.swift
//  SoccerBox
//
//  Created by Marco Ragozzino on 12/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit


class Setting_ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
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
    @IBOutlet var personalImage: UIImageView!
    @IBAction func scatta(_ sender: UIButton) {
        scatta()
    }
    
    @IBAction func salva(_ sender: UIBarButtonItem) {
        let defaults = UserDefaults.standard
        defaults.setValue(name.text, forKey: "UserName")
        defaults.setValue(descrizione.text , forKey: "UserDescription")
        let imageData = personalImage.image!.pngData()
        let imageString = imageData?.base64EncodedString()
        defaults.setValue(imageString, forKey: "UserImage")
    }
    
    @IBOutlet var descrizione: UITextField!
    @IBOutlet var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        personalImage.layer.cornerRadius = 45
        personalImage.layer.masksToBounds = true
        personalImage.clipsToBounds = true
        navigationItem.title = "Setting"
        let defaults = UserDefaults.standard
        date_1.setValue(UIColor.white, forKey: "textColor")
        date_2.setValue(UIColor.white, forKey: "textColor")
        name.text = defaults.string(forKey: "UserName")
        descrizione.text = defaults.string(forKey: "UserDescription")
        if let immagine64 = defaults.string(forKey: "UserImage") {
            let url = URL(string: String(format:"data:application/octet-stream;base64,%@",immagine64))
        do {
            let data =  try Data(contentsOf: url!)
            personalImage.image = UIImage(data: data)
        }catch {}
        }
        
    }
    
    func scatta() {
        if(UIImagePickerController.availableMediaTypes(for: .camera) != nil) {
            let vc = UIImagePickerController()
            vc.sourceType = .camera
            vc.allowsEditing = true
            vc.delegate = self
            present(vc, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        guard let image = info[.editedImage] as? UIImage else {
            print("No image found")
            return
        }
        
            personalImage.image = image
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
