//
//  FourthViewController.swift
//  NavigationUIKit
//
//  Created by Vladimir Dvornikov on 16/04/2023.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var professionTF: UITextField!
    
    var user = User()
    
    
    @IBAction func save() {
        user.profession = professionTF.text ?? ""
    }
    
    
    @IBAction func toFirstPressed() {
        user.profession = professionTF.text ?? ""
        performSegue(withIdentifier: "unwindToFirstVC", sender: self)
    }
}
