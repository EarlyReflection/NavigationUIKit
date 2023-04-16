//
//  ThirdViewController.swift
//  NavigationUIKit
//
//  Created by Vladimir Dvornikov on 16/04/2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    var user = User()

    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = """
\(user.name)
\(user.surname)
"""
        
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
