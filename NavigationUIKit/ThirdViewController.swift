//
//  ThirdViewController.swift
//  NavigationUIKit
//
//  Created by Vladimir Dvornikov on 16/04/2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var ageTF: UITextField!
    
    var user = User()


    @IBAction func nextPressed() {
        user.age = ageTF.text ?? ""
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
