//
//  CaretakerRegViewController.swift
//  SmartMedAssistBandiGDPSu23
//
//  Created by Nelavelli,Chandu on 5/22/23.
//

import UIKit

class CaretakerRegViewController: UIViewController {

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
        
        
        
        
    
        else{
             
        }
        
        
        
        
    }
    
}
