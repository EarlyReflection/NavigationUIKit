//
//  SecondViewController.swift
//  NavigationUIKit
//
//  Created by Vladimir Dvornikov on 16/04/2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.text = """
Hi,
\(user.name)
\(user.surname)
"""
    }
    
    @IBAction func nextPressed() {
        performSegue(withIdentifier: "goToThird", sender: nil)
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let thirdVC = navigationVC.topViewController as? ThirdViewController else { return }
        thirdVC.user = user
    }
    
    
}
