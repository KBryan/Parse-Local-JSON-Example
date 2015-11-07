//
//  ViewController.swift
//  ParseLocalJSONFileiOS
//
//  Created by KBryan on 2015-11-07.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var parseJSONData:ParseJSON!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parseJSONData = ParseJSON(fName:"colour", fType: ".json")
       
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

