//
//  AddDetails.swift
//  Demo-Protocol
//
//  Created by Anand on 21/01/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

protocol AddDetailsDelegate {
    func getDetailsData(_ details: String)
}

class AddDetails: UIViewController {

    var delegate: AddDetailsDelegate?
    @IBOutlet weak var textDetails: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        textDetails.addTarget(self, action: #selector(changesInText(_:)), for: .editingChanged)
        textDetails.becomeFirstResponder()
    }

    //MARK: - Action here for Text Field Changes
    func changesInText(_ textField: UITextField){
        delegate?.getDetailsData(textField.text ?? "")
    }
   
}

//MARK: - Text Field Delegate Methods
extension AddDetails: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textDetails.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        return true
    }
}
