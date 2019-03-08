//
//  ViewController.swift
//  PassingDataBetweenVCs
//
//  Created by Jimson Vedua on 3/8/19.
//  Copyright © 2019 SameTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstPageText :String = ""
    
    
    @IBOutlet weak var labelFirstPage: UILabel!
    
    @IBOutlet weak var textfieldFirstPage: UITextField!
    

    @IBAction func goButtonFirstPage(_ sender: Any) {
    
        let firstInput = textfieldFirstPage.text
        print("First Page input = \(String(describing: firstInput!))")

       }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "firstToSecond" {
             let vc = segue.destination as? SecondViewController
             vc?.labelSecondPage!.text = textfieldFirstPage.text
        }
    }
    
    
    
    
    
    
    
    
    
    

    private func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

