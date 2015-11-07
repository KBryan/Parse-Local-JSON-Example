//
//  ViewController.swift
//  ParseLocalJSONFileiOS
//
//  Created by KBryan on 2015-11-07.
//  Copyright © 2015 KBryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data:NSData!
    var stringData:NSString!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         let path = NSBundle.mainBundle().pathForResource("colour", ofType: ".json")!
         do {
            data = try NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingUncached)
            stringData = NSString(data: data, encoding: NSUTF8StringEncoding)
         } catch {
         print("error ")
        }
        print("data read: \(stringData)")
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

