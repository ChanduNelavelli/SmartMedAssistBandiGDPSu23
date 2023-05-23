//
//  PatientRegViewController.swift
//  SmartMedAssistBandiGDPSu23
//
//  Created by Nelavelli,Chandu on 5/22/23.
//

import UIKit
import FirebaseAuth
import Firebase

class PatientRegViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var Emailid: UITextField!
    
    @IBOutlet weak var CreatePassword: UITextField!
    
    @IBOutlet weak var ConformPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Signup(_ sender: Any) {
        if(name.text?.isEmpty == true || Emailid.text?.isEmpty == true || CreatePassword.text?.isEmpty == true || ConformPassword.text?.isEmpty == true){
            var dialogMessage = UIAlertController(title: "Alert!", message: "Enter All Fileds.", preferredStyle: .alert)
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
            })
            
            //Add OK button to a dialog message
            dialogMessage.addAction(ok)
            
            // Present Alert to
            self.present(dialogMessage, animated: true, completion: nil)
        }
        
        
        else if(CreatePassword.text != ConformPassword.text){
            var dialogMessage = UIAlertController(title: "Alert!", message: "CONFORM PASSWORD MISMATCH.", preferredStyle: .alert)
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
            })
            
            //Add OK button to a dialog message
            dialogMessage.addAction(ok)
            
            // Present Alert to
            self.present(dialogMessage, animated: true, completion: nil)
        }
        else
        {
            
            
                
                signup()
            
           
            
        }
        
        
    }
    
    func signup()
    {
        
        Auth.auth().createUser(withEmail: Emailid.text!, password: ConformPassword.text!){(authResult,error) in
            guard let user = authResult?.user, error == nil else{
                print("Error \(error?.localizedDescription)")
                
                
                
                if(error?.localizedDescription.isEmpty == false){
                    var dialogMessage = UIAlertController(title: "Alter!", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    // Create OK button with action handler
                    let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                        print("Ok button tapped")
                    })
                    
                    //Add OK button to a dialog message
                    dialogMessage.addAction(ok)
                    
                    // Present Alert to
                    self.present(dialogMessage, animated: true, completion: nil)
                    
                }
                
                
                
                
                
                
                
                
                return
            }
            
            var dialogMessage = UIAlertController(  title: "Congratulations!", message: "You have Successfully Signed Up.", preferredStyle: .alert)
            
            
            // Create OK button with action handler
            let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                print("Ok button tapped")
            })
            
            //Add OK button to a dialog message
            dialogMessage.addAction(ok)
            
            // Present Alert to
            self.present(dialogMessage, animated: true, completion: nil)
            
            
        }
        
    }}
