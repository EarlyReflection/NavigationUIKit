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
    @IBOutlet weak var fullDescription: UILabel!
    
    var user = User()
    
    @IBAction func enterPressed() {
        user.name = nameTF.text ?? ""
        user.surname = surnameTF.text ?? ""
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let secondVC = viewController as? SecondViewController {
                secondVC.user = user
            } else if let navigationController = viewController as? UINavigationController {
                let thirdVC = navigationController.topViewController as! ThirdViewController
                thirdVC.user = user
            }
        }
    }
}
