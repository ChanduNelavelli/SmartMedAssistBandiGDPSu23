//
//  CaretakerSigninViewController.swift
//  SmartMedAssistBandiGDPSu23
//
//  Created by Nelavelli,Chandu on 5/22/23.
//

import UIKit

class CaretakerSigninViewController: UIViewController {
    @IBOutlet weak var Email: UITextField!
    
    @IBOutlet weak var Password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginbtn(_ sender: Any) {
        if(Email.text?.isEmpty == true || Password.text?.isEmpty == true){
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
        
    }
    
   

}
