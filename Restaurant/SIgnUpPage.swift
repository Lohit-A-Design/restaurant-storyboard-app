//
//  SIgnUpPage.swift
//  Restaurant
//
//  Created by Lohit on 24/05/24.
//

import UIKit
import CoreData

class SIgnUpPage: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var emailid: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var Phonenumber: UITextField!
    
    @IBOutlet weak var CreateAccount: UIButton!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    
//
//    let password =  UITextField(frame: CGRect(x: 20, y: 310, width: 330, height: 50))
//    let emailid =  UITextField(frame: CGRect(x: 20, y: 240, width: 330, height: 50))
//    let Phonenumber =  UITextField(frame: CGRect(x: 20, y: 380, width: 330, height: 50))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        CreateAccount.layer.cornerRadius = 25
   
       
        Username.placeholder = "Username"
        Username.font = UIFont.systemFont(ofSize: 15)
//        Username.borderStyle = UITextField.BorderStyle.roundedRect
        Username.autocorrectionType = UITextAutocorrectionType.no
        Username.keyboardType = UIKeyboardType.default
        Username.returnKeyType = UIReturnKeyType.done
        Username.clearButtonMode = UITextField.ViewMode.whileEditing
        Username.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        Username.layer.cornerRadius = 22
        Username.layer.masksToBounds = true
        Username.layer.borderWidth = 0.1
        Username.delegate = self
        Username.tag = 1
        
        Phonenumber.layer.cornerRadius = 22
      
        Phonenumber.layer.masksToBounds = true
        Phonenumber.layer.borderWidth = 0.1
        Phonenumber.placeholder = "Phone No"
        Phonenumber.font = UIFont.systemFont(ofSize: 15)
//        Phonenumber.borderStyle = UITextField.BorderStyle.roundedRect
        Phonenumber.autocorrectionType = UITextAutocorrectionType.no
        Phonenumber.keyboardType = UIKeyboardType.default
        Phonenumber.returnKeyType = UIReturnKeyType.done
        Phonenumber.clearButtonMode = UITextField.ViewMode.whileEditing
        Phonenumber.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        Phonenumber.delegate = self
        Phonenumber.tag = 2

//            self.view.addSubview(Phonenumber)
        emailid.layer.cornerRadius = 22
        emailid.layer.borderWidth = 0.1
        emailid.layer.masksToBounds = true
        emailid.placeholder = "Email Id"
        emailid.font = UIFont.systemFont(ofSize: 15)
//        emailid.borderStyle = UITextField.BorderStyle.
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
//        password.borderStyle = UITextField.BorderStyle.roundedRect
        password.autocorrectionType = UITextAutocorrectionType.no
        password.keyboardType = UIKeyboardType.default
        password.returnKeyType = UIReturnKeyType.done
        password.clearButtonMode = UITextField.ViewMode.whileEditing
        password.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        password.delegate = self
        password.tag = 4

//            self.view.addSubview(password)
        
            
        
    }
    
    func isValidPhone(phone: String) -> Bool {
            let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
            let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
            return phoneTest.evaluate(with: phone)
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
    
    func passwordvalidation(passwordstring: String) -> Bool    {
        
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
    func isValidIndianPhoneNumber(_ phoneNumber: String) -> Bool {
       
        var matchingphnnumber = true
        
        let phoneNumberRegex = "^[6-9]\\d{9}$"
       
        
        if phoneNumber.count<10{
           
            showingalert(alertTitle: "", message: "your phonenumber contains less than 10 numbers")
                    
            matchingphnnumber =  false
        }
        if phoneNumber.count>10{
            showingalert(alertTitle: "", message: "your phonenumber contains more than 10 numbers")
            matchingphnnumber =  false
        }
       
        if(!NSPredicate(format: "SELF MATCHES %@", phoneNumberRegex).evaluate(with: phoneNumber))
        {
            showingalert(alertTitle: "", message: "please enter the correct phone number")
            matchingphnnumber =  false
        }
        return matchingphnnumber
        
    }

    
    

    @IBAction func SignUpCreate(_ sender: Any) {
        
        //        ================================================== Validation ====================================================
        let username = Username.text ?? ""
            let emailtext = emailid.text ?? ""
            let phoneNotext = Phonenumber.text ?? ""
            let passwordtext = password.text  ?? ""
            
        if username.count > 0 && emailtext.count > 0 &&  passwordtext.count > 0 && phoneNotext.count > 0
        {
               
            if username.count >= 8 && username.count <= 20 {
                
            
                
                
            }
            
            if username.count < 8{
                
                let ac = UIAlertController(title: "Alert", message: "Enter Min 8 characters in Username Field", preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                    print("OK Button Action")
                }
                ac.addAction(ok)
                present(ac, animated: true)
                
                return
            }
            
            if username.count > 20{
                
                let ac = UIAlertController(title: "Alert", message: "Enter max 20 characters in Username Field", preferredStyle: .alert)
                let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                    print("OK Button Action")
                }
                ac.addAction(ok)
                present(ac, animated: true)
                
                return

            }
            
            
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
            
            let phnoValidation = isValidIndianPhoneNumber(phoneNotext)
            if phnoValidation == false{
                
                return

            }
            
            let pwdValidationis =  passwordvalidation(passwordstring: passwordtext)
            if pwdValidationis == false{
                       
                return
            }
            
            else{
                
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
                if username.count == 0 && emailtext.count == 0 &&  phoneNotext.count == 0 && passwordtext.count == 0{
                    
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
                    if username.count == 0{
                        let ac = UIAlertController(title: "Alert", message: "Please fill Username Field", preferredStyle: .alert)
                        let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                            print("OK Button Action")
                        }
                        ac.addAction(ok)
                        present(ac, animated: true)
                        
                        return

                    }
                    
                  
                    else if phoneNotext.count == 0{
                        let ac = UIAlertController(title: "Alert", message: "Please fill PhNO Field", preferredStyle: .alert)
                        let ok = UIAlertAction(title: "OK", style: .default) { [weak self, weak ac] action in
                            print("OK Button Action")
                        }
                        ac.addAction(ok)
                        present(ac, animated: true)
                        
                        return

                    }
                    else if emailtext.count == 0 {
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
  //        ================================================== DataBase/saving values ====================================================

        
            
            
//
//            let Emailid_Tf = emailid.text
//            let Password_Tf = password.text
//            let Phonenumber_Tf = Phonenumber.text
//
            //Database - Table - Columns - Rows
            
            
            // get DatabaseName path
                let managedContext = appDelegate.persistentContainer.viewContext
            
            
            // get TableName from DB
                let userEntity = NSEntityDescription.entity(forEntityName: "SignupData", in: managedContext)!

            // get Column Names from Table
                let columns = NSManagedObject(entity: userEntity, insertInto: managedContext)
            //5 columns
            
            
            
            // Insert values to Columns
                    columns.setValue(emailtext, forKey: "emailid_tf")
                    columns.setValue(passwordtext, forKey: "password_tf")
                    columns.setValue(phoneNotext, forKey: "phonenumber_tf")
                    columns.setValue(phoneNotext, forKey: "username_tf")
            
            // Save to DB
                appDelegate.saveContext()
            
            
            
            let alertController = UIAlertController(title: "Saved", message: "Account Created Successfully", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default) { _ in
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                let LoginPage = storyBoard.instantiateViewController(withIdentifier: "LoginPage") as! LoginPage
                self.navigationController?.pushViewController(LoginPage, animated: true)
                // Handle OK button tap
            }

            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
            
            print("Account Created Successfully")

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
