//
//  FouthViewController.swift
//  TableVFiew Delegate
//
//  Created by yapapp on 10/08/23.
//

import UIKit

class FouthViewController: UIViewController {
    
    var text1 = String()
    var newOne:((String)->())?  
    @IBOutlet weak var textField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = text1
        

        
    }
    


    @IBAction func done(_ sender: UIButton) {
        newOne?(textField.text ?? "")
        self.navigationController?.popViewController(animated: true)
        print(text1)
    }
}
