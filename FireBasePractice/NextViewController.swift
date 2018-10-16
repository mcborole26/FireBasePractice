//
//  NextViewController.swift
//  FireBasePractice
//
//  Created by minal borole on 05/10/18.
//  Copyright © 2018 minal borole. All rights reserved.
//

import UIKit
import  Firebase

class NextViewController: UIViewController {

   
    @IBOutlet weak var tableDisplay: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var reference:DatabaseReference
        reference = Database.database().reference()
        reference.observeSingleEvent(of: .value, with: {(snapshot) in
            let dic = snapshot
            print(dic)
        })
        

        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

 }

