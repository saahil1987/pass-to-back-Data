//
//  SecondViewController.swift
//  TableVFiew Delegate
//
//  Created by yapapp on 10/08/23.
//

import UIKit
protocol text:AnyObject{
    func nameText(name:String)
}

class SecondViewController: UIViewController {
    
    weak var delegate:text?
    
    @IBOutlet weak var buttonTitle: UIButton!
    @IBOutlet weak var nameField: UITextField!
    
    var textFeild = String()
//    var didChange:((String)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.text = textFeild
    }
    
    
    @IBAction func Done(_ sender: UIButton) {
        delegate?.nameText(name: nameField.text ?? "")
//        didChange?(nameField.text ?? "")
        self.navigationController?.popViewController(animated: true)
        print(textFeild)

    }
    
}


