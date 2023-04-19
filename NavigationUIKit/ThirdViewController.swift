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
        performSegue(withIdentifier: "goToFourth", sender: nil)
    }
    

 
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let fourthVC = segue.destination as? FourthViewController else { return }
        fourthVC.user = user
    }


}
