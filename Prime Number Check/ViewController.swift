//
//  ViewController.swift
//  Prime Number Check
//
//  Created by D7703_18 on 2018. 3. 29..
//  Copyright © 2018년 D7703_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var UIlab: UILabel!
    override func viewDidLoad() {
        txt.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func butCheck(_ sender: Any) {
        
        
        let Number = Int(txt.text!)
        var Prime = true
        
        if Number == 1{
            Prime = false
        }

        if Number != 1 && Number != 2{
            for i in 2..<Number!{
                if Number! % i == 0{
                    Prime = false
                }
            }

            }
            if Prime == true{
                UIlab.text = "Prime Number!!!!"
            }else {
                UIlab.text = "Not Prime Number!!!!!!"
            }
        }
    
    @IBAction func butReset(_ sender: Any) {
        UIlab.text = ""
        txt.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        view.endEditing(false)
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(false)
    }
    
    
}
