//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        performSegue(withIdentifier: "goToChat", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        

        
        //TODO: Set up a new user on our Firbase database
        
        FIRAuth.auth()?.createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!,
                                       completion: { (user, error) in
                                                    if error != nil {
                                                        print(error!)
                                                    }
                                                    else {
                                                        print("Registration successfull")
                                                        
                                                        self.performSegue(withIdentifier: "goToChat", sender: self)
                                                    }
                                                })

        
        
    } 
    
    
}
