//
//  FirstViewController.swift
//  NavigationUIKit
//
//  Created by Vladimir Dvornikov on 16/04/2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    
    var user = User()
    
    
    @IBAction func enterPressed() {
        user.name = nameTF.text ?? ""
        user.surname = surnameTF.text ?? ""
    }
    

   
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        secondVC.user = user
    }
}
