//
//  PatientSigninViewController.swift
//  SmartMedAssistBandiGDPSu23
//
//  Created by Nelavelli,Chandu on 5/22/23.
//

import UIKit

class PatientSigninViewController: UIViewController {

    
    @IBOutlet weak var Emailtext: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Loginbtn(_ sender: Any) {
        
        if(Emailtext.text?.isEmpty == true || Password.text?.isEmpty == true){
            showAlertMsg(message: "Please Enter All Fields.")
            
        }
        else{
            
        }
        
        
    }
    
    func showAlertMsg(message:String){
        // Create new Alert
        var dialogMessage = UIAlertController(title: "Alert!", message: message, preferredStyle: .alert)
        
        // Create OK button with action handler
        let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
            print("Ok button tapped")
         })
        
        //Add OK button to a dialog message
        dialogMessage.addAction(ok)

        // Present Alert to
        self.present(dialogMessage, animated: true, completion: nil)
    }
 

}
