//
//  ViewController.swift
//  Restaurant
//
//  Created by Lohit on 24/05/24.
//

import UIKit
class ViewController: UIViewController {

    
    @IBOutlet weak var LoginButtonEdit: UIButton!
    
    @IBOutlet weak var SignUpButtonEdit: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginButtonEdit.layer.cornerRadius = 25
        
//        SignUpButtonEdit.layer.borderColor = UIColor.black.cgColor
//        SignUpButtonEdit.layer.borderWidth = 1.5
        SignUpButtonEdit.layer.cornerRadius = 25
        
    }

    @IBAction func LogInPageAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let LoginPage = storyBoard.instantiateViewController(withIdentifier: "LoginPage") as! LoginPage
        self.navigationController?.pushViewController(LoginPage, animated: true)
    
    }
    
    @IBAction func SignInPageAction(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let SIgnUpPage = storyBoard.instantiateViewController(withIdentifier: "SIgnUpPage") as! SIgnUpPage
        self.navigationController?.pushViewController(SIgnUpPage, animated: true)
    }
    
    
    

}

