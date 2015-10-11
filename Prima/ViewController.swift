//
//  ViewController.swift
//  Prima
//
//  Created by Mary Grace Lucas on 10/11/15.
//  Copyright © 2015 Mary Grace Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var enterNumbertextField: UITextField!
    @IBOutlet weak var primeAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func findOutButtonPressed(sender: UIButton) {
        
        primeAnswerLabel.hidden = false
        enterNumbertextField.resignFirstResponder()
       
        if isPrime(Int(enterNumbertextField.text!)!) == true {
            self.primeAnswerLabel.text = ("YES")
        }
        else {
            self.primeAnswerLabel.text = ("NO")
        
        }
        
    }
    
    func isPrime(number: Int) -> Bool {
        
        var returnValue = true
        
        
        for var i = 2; i <= number - 1; i++ {
            
            //even division of a number thats not 1 or the number itself = not a prime number
            if number % i == 0 {
                returnValue = false
                break
            }
        }
        
        
        return returnValue
        
    }

}

