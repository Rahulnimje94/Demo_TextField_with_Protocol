//
//  ViewController.swift
//  Demo-Protocol
//
//  Created by Anand on 21/01/18.
//  Copyright © 2018 Rahul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textDetails: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    @IBAction func actionMovedToWriteDetails(_ sender: Any) {
        let details = self.storyboard?.instantiateViewController(withIdentifier: "AddDetails") as! AddDetails
        details.delegate = self
        present(details, animated: true, completion: nil)
    }

}

extension ViewController: AddDetailsDelegate{
    
    func getDetailsData(_ details: String) {
        textDetails.text = details
    }
    
}

