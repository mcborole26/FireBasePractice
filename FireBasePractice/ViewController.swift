//
//  ViewController.swift
//  FireBasePractice
//
//  Created by minal borole on 05/10/18.
//  Copyright © 2018 minal borole. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    var ref:DatabaseReference!
     var courseDic = NSMutableDictionary()
    
    @IBOutlet weak var nameText: UITextField!
    
    @IBOutlet weak var feesTxt: UITextField!
    @IBOutlet weak var durationTxt: UITextField!
    
    @IBAction func saveToFirebase(_ sender: Any) {
        ref = Database.database().reference()
        courseDic.setValue(nameText.text!, forKey: "name")
        courseDic.setValue(durationTxt.text!, forKey: "duration")
        courseDic.setValue(feesTxt.text!, forKey: "fees")
        ref.child("Courses").childByAutoId().setValue(courseDic) { (error, reference) in
            let e = error
            if(e != nil)
            {
                print(error?.localizedDescription as Any)
            }
            else{
                print("Insert Success")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

