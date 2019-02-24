//
//  Setting_ViewController.swift
//  SoccerBox
//
//  Created by Marco Ragozzino on 12/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit
var m = false
var tu = false
var w = false
var th = false
var f = false
var sa = false
var su = false

class Setting_ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    @IBOutlet var sunday: UIButton!
    @IBOutlet var saturday: UIButton!
    @IBOutlet var friday: UIButton!
    @IBOutlet var thursday: UIButton!
    @IBOutlet var wednsday: UIButton!
    @IBOutlet var tuesday: UIButton!
    @IBOutlet var monday: UIButton!
    
    @IBAction func sunday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        su = sender.isSelected
    }
    @IBAction func saturday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        sa = sender.isSelected
    }
    @IBAction func friday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        f = sender.isSelected
    }
    @IBAction func thursday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        th = sender.isSelected
    }
    @IBAction func wednesday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        w = sender.isSelected
    }
    @IBAction func tuesday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        tu = sender.isSelected
    }
    @IBAction func monday(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        m = sender.isSelected
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    
    @IBOutlet var descrizione: UITextField!
    @IBOutlet var name: UITextField!
    @IBOutlet var date_2: UIDatePicker!
    @IBOutlet var date_1: UIDatePicker!
    @IBOutlet var personalImage: UIImageView!
    
    @IBAction func scatta(_ sender: UIButton) {
        scatta()
    }
    
    
    @IBAction func resetta(_ sender: UIBarButtonItem) {
        let defaults = UserDefaults.standard
        defaults.removePersistentDomain(forName: "UserName")
        defaults.removePersistentDomain(forName: "UserDescription")
        defaults.removePersistentDomain(forName: "UserImage")
        defaults.removePersistentDomain(forName: "M")
        defaults.removePersistentDomain(forName: "TU")
        defaults.removePersistentDomain(forName: "W")
        defaults.removePersistentDomain(forName: "TH")
        defaults.removePersistentDomain(forName: "F")
        defaults.removePersistentDomain(forName: "SA")
        defaults.removePersistentDomain(forName: "SU")
        defaults.removePersistentDomain(forName: "From")
        defaults.removePersistentDomain(forName: "To")
        personalImage.image = UIImage(named: "addphotoicon")
        name.text = ""
        descrizione.text = ""
        monday.isSelected = false
        tuesday.isSelected = false
        wednsday.isSelected = false
        thursday.isSelected = false
        friday.isSelected = false
        saturday.isSelected = false
        sunday.isSelected = false
        let formtter = DateFormatter()
        formtter.dateFormat = "yyyy/MM/dd HH:mm"
        date_1.date = formtter.date(from: "2019/02/15 00:00")!
        date_2.date = formtter.date(from: "2019/02/15 00:00")!
        
        let avviso = UIAlertController(title: "Resetted", message: "To save changes, tap on the save button", preferredStyle: .actionSheet)
        avviso.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(avviso, animated: true, completion: nil)
    }
    
    @IBAction func salva(_ sender: UIBarButtonItem) {
        let defaults = UserDefaults.standard
        defaults.setValue(name.text, forKey: "UserName")
        defaults.setValue(descrizione.text , forKey: "UserDescription")
        let imageData = personalImage.image!.pngData()
        let imageString = imageData?.base64EncodedString()
        defaults.setValue(imageString, forKey: "UserImage")
        defaults.setValue(m, forKey: "M")
        defaults.setValue(tu, forKey: "TU")
        defaults.setValue(w, forKey: "W")
        defaults.setValue(th, forKey: "TH")
        defaults.setValue(f, forKey: "F")
        defaults.setValue(sa, forKey: "SA")
        defaults.setValue(su, forKey: "SU")
        defaults.setValue(date_1.date, forKey: "From")
        defaults.setValue(date_2.date, forKey: "To")
        
        let avviso = UIAlertController(title: "Changes saved", message: "", preferredStyle: .actionSheet)
        avviso.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(avviso, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        personalImage.layer.cornerRadius = 45
        personalImage.layer.masksToBounds = true
        personalImage.clipsToBounds = true
        navigationItem.title = "Settings"
        let defaults = UserDefaults.standard
        date_1.setValue(UIColor.white, forKey: "textColor")
        date_2.setValue(UIColor.white, forKey: "textColor")
        if defaults.object(forKey: "From") != nil {
            date_1.date = defaults.object(forKey: "From") as! Date
        }
        if defaults.object(forKey: "To") != nil {
            date_2.date = defaults.object(forKey: "To") as! Date
        }
        name.text = defaults.string(forKey: "UserName")
        descrizione.text = defaults.string(forKey: "UserDescription")
        if let immagine64 = defaults.string(forKey: "UserImage") {
            let url = URL(string: String(format:"data:application/octet-stream;base64,%@",immagine64))
        do {
            let data =  try Data(contentsOf: url!)
            personalImage.image = UIImage(data: data)
        }catch {}
        }
        monday.isSelected = defaults.bool(forKey: "M")
        tuesday.isSelected = defaults.bool(forKey: "TU")
        wednsday.isSelected = defaults.bool(forKey: "W")
        thursday.isSelected = defaults.bool(forKey: "TH")
        friday.isSelected = defaults.bool(forKey: "F")
        saturday.isSelected = defaults.bool(forKey: "SA")
        sunday.isSelected = defaults.bool(forKey: "SU")
        
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
