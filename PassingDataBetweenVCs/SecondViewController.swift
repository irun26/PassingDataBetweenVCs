//
//  SecondViewController.swift
//  PassingDataBetweenVCs
//
//  Created by Jimson Vedua on 3/8/19.
//  Copyright © 2019 SameTeam. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    

    @IBOutlet weak var labelSecondPage: UILabel!
    
    @IBOutlet weak var textfieldSecondPage: UITextField!
    
    @IBAction func goButtonSecondPage(_ sender: Any) {
        let secondInput = textfieldSecondPage.text
        print("Second Page input = \(String(describing: secondInput!))")
   
    labelSecondPage.text = "tttt"
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

   
}
