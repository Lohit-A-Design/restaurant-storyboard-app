//
//  LoginPage.swift
//  Restaurant
//
//  Created by Lohit on 24/05/24.
//

import UIKit
import CoreData


class LoginPage: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var emailid: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var Loginbtn: UIButton!
    
    @IBOutlet weak var FbLoginBtn: UIButton!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        Loginbtn.layer.cornerRadius = 25
        FbLoginBtn.layer.cornerRadius = 25
        
        emailid.layer.cornerRadius = 22
        emailid.layer.masksToBounds = true
        emailid.layer.borderWidth = 0.1
        emailid.placeholder = "Email Id"
        emailid.font = UIFont.systemFont(ofSize: 15)
        emailid.borderStyle = UITextField.BorderStyle.roundedRect
        emailid.autocorrectionType = UITextAutocorrectionType.no
        emailid.keyboardType = UIKeyboardType.default
        emailid.returnKeyType = UIReturnKeyType.done
        emailid.clearButtonMode = UITextField.ViewMode.whileEditing
        emailid.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        emailid.delegate = self
        emailid.tag = 3

//            self.view.addSubview(emailid)
        password.layer.cornerRadius = 22
        password.layer.masksToBounds = true
        password.layer.borderWidth = 0.1
        password.placeholder = "Enter Password"
        password.font = UIFont.systemFont(ofSize: 15)
        password.borderStyle = UITextField.BorderStyle.roundedRect
        password.autocorrectionType = UITextAutocorrectionType.no
        password.keyboardType = UIKeyboardType.default
        password.returnKeyType = UIReturnKeyType.done
        password.clearButtonMode = UITextField.ViewMode.whileEditing
        password.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        password.delegate = self
        password.tag = 4

//            self.view.addSubview(password)
        
    }
    

    func isValidEmail(email: String) -> Bool {
           
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            return emailTest.evaluate(with: email)
        }
    func showingalert(alertTitle: String, message: String){
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
            
             let ok = UIAlertAction(title: "OK", style: .default, handler: { action in
             })
             alert.addAction(ok)
             let cancel = UIAlertAction(title: "Cancel", style: .default, handler: { action in
             })
             alert.addAction(cancel)
             DispatchQueue.main.async(execute: {
                self.present(alert, animated: true)
        })

    }
    func passwordvalidation(passwordstring: String) -> Bool {
        
        var matchingPassword = true
         
         if(passwordstring.count < 8){
            showingalert(alertTitle: "", message: "Your password must have at least 8 characters")
            matchingPassword = false
         }
         
         if(passwordstring.count > 16){
            showingalert(alertTitle: "", message: "Your password max  16 characters")
             matchingPassword = false
         }
         
        //Capital letter checking
         if(!NSPredicate(format:"SELF MATCHES %@", ".*[A-Z]+.*").evaluate(with: passwordstring)){
            showingalert(alertTitle: "", message: "Your password must have One Capital Letter")
             matchingPassword = false
         }
         
        //small letter checking
         if(!NSPredicate(format:"SELF MATCHES %@", ".*[a-z]+.*").evaluate(with: passwordstring)){
            showingalert(alertTitle: "", message: "Your password must have one small letter")
             matchingPassword = false
         }
         
        //One digit checking
         if(!NSPredicate(format:"SELF MATCHES %@", ".*[0-9]+.*").evaluate(with: passwordstring)){
            showingalert(alertTitle: "", message: "Your password must have one digit")
             matchingPassword = false
         }

        //One Symbol
         if(!NSPredicate(format:"SELF MATCHES %@", ".*[!&^%$#@()/]+.*").evaluate(with: passwordstring)){
            showingalert(alertTitle: "", message: "Your password must have one symbol")
             matchingPassword = false
         }
         
         
         return matchingPassword
     }
    
    
    @IBAction func LoginValidation(_ sender: Any) {
        
            
          
//        ================================================== Validation ====================================================
            let emailtext = emailid.text ?? ""
            let passwordtext = password.text  ?? ""
            
            if emailtext.count > 0 &&  passwordtext.count > 0{
          
            let emailValidation = isValidEmail(email: emailtext)
            if emailValidation == false{
                
                let ac = UIAlertController(title: "Alert", message: "Please enter correct eMailID", preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                    print("OK Button Action")
                }
                ac.addAction(ok)
                present(ac, animated: true)
                
                return

            }
            
          
            
            let PaswordValidationis =  passwordvalidation(passwordstring: passwordtext)
            if PaswordValidationis == false{
                       
                return
            }
            
            else{
//
//                let ac = UIAlertController(title: "Alert", message: "Validation Success", preferredStyle: .alert)
//                let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
//                    print("OK Button Action")
//                }
//                ac.addAction(ok)
//                present(ac, animated: true)
                print("Validation Succesful")
            }
        }
            else {
                    
                    //if NOT fill all TextFields
                    if  emailtext.count == 0 && passwordtext.count == 0{
                        
                        let ac = UIAlertController(title: "Alert", message: "Please fill All Field", preferredStyle: .alert)
                        let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                            print("OK Button Action")
                        }
                        ac.addAction(ok)
                        present(ac, animated: true)
                        
                        return
                      
                    }
                    else
                    {
                   if emailtext.count == 0 {
                            let ac = UIAlertController(title: "Alert", message: "Please fill eMail Field", preferredStyle: .alert)
                            let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                                print("OK Button Action")
                            }
                            ac.addAction(ok)
                            present(ac, animated: true)
                            
                            return

                        }
                        
                        else if passwordtext.count == 0{
                            let ac = UIAlertController(title: "Alert", message: "Please fill Password Field", preferredStyle: .alert)
                            let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                                print("OK Button Action")
                            }
                            ac.addAction(ok)
                            present(ac, animated: true)
                            
                            return
                }
                        }
                    
                    }
     
//======================= Retriving StoredData and Comparing it To Login Details(user id, Password) ===============================
        //Database - Table - Columns - Rows

        // Get DataBAse Name Path
        let managedContext = appDelegate.persistentContainer.viewContext
    
    // get TableName from DB
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "SignupData")
        
    do {
        
        
        // get All Columns  from Table
            let dbRecords = try managedContext.fetch(fetchRequest)
          
            print(dbRecords)
            print(dbRecords.count)
      
            for columns in dbRecords as! [NSManagedObject]
            {

        let email = columns.value(forKey: "emailid_tf") as! String
        let password = columns.value(forKey: "password_tf") as! String

//                if (emailtext.caseInsensitiveCompare(email) == .orderedSame) && (passwordtext.caseInsensitiveCompare(password) == .orderedSame)
                if (emailtext == email) && (passwordtext == password){
                    
//                    let ac = UIAlertController(title: "Welcome Lohit", message: "Login Succesful", preferredStyle: .alert)
//                    let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
//                        print("OK Button Action")
//                    }
//                    ac.addAction(ok)
//                    present(ac, animated: true)
                  
                    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                    let TabbarController = storyBoard.instantiateViewController(withIdentifier: "TabbarController") as! UITabBarController
                    self.navigationController?.pushViewController(TabbarController, animated: true)
                  
                   break
                  
                }

                else
                {
                    let ac = UIAlertController(title: "Error", message: "Please check your Email and Password", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                    print("OK Button Action")
                    }
                        ac.addAction(ok)
                        present(ac, animated: true)
                    print("No Records Found")
                }

            }
        
      }
     catch {
        
        print("Failed")
    }
   
    
    
    
    }
        
    @IBAction func SignUpInLogin(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let SIgnUpPage = storyBoard.instantiateViewController(withIdentifier: "SIgnUpPage") as! SIgnUpPage
        self.navigationController?.pushViewController(SIgnUpPage, animated: true)
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool // return NO to disallow editing.
    {
     textField.layer.borderWidth = 1
//        textField.layer.masksToBounds = true
     textField.layer.borderColor = UIColor.blue.cgColor
     return true
 }

     func textFieldDidBeginEditing(_ textField: UITextField) // became first responder
     {
         
     }
      func textFieldShouldEndEditing(_ textField: UITextField) -> Bool // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
      {
        textField.layer.borderWidth = 0.1
         textField.layer.borderColor = UIColor.black.cgColor
//        textField.layer.masksToBounds = true

        //  if textField == yourname
        
         
       return true
   }

    
    func textFieldShouldClear(_ textField: UITextField) -> Bool // called when clear button pressed. return NO to ignore (no notifications)
    {
    print("cancel button clicked")
     return true
 }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
      
        
            textField.resignFirstResponder()
     return true
 }

    
    
    
    

}
