//
//  SignupViewController.swift
//  Alliance
//
//  Created by Nai Hamdan on February/21/2021.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signup(_ sender: Any) {
    }
    
    @IBAction func login(_ sender: Any) {
        let storyboard = UIStoryboard(name:"main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "login")
        vc.modalPresentationStyle = .overFullScreen
        present(vc,animated: true)
    }
    

}
