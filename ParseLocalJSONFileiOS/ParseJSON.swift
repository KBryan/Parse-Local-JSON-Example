//
//  ParseJSON.swift
//  ParseLocalJSONFileiOS
//
//  Created by KBryan on 2015-11-07.
//  Copyright © 2015 KBryan. All rights reserved.
//

import Foundation


struct ParseJSON {
    //
    private var nameOfFile:String!
    private var typeOfFile:String!
    var data:NSData!
    var stringData:NSString!
    
    init(fName:String, fType:String) {
        nameOfFile = fName
        typeOfFile = fType
        parseJSONFile(nameOfFile, fileType: typeOfFile)
    }

    mutating func parseJSONFile(fileName:String, fileType:String) -> NSData {
        
        // Do any additional setup after loading the view, typically from a nib.
        let path = NSBundle.mainBundle().pathForResource("\(fileName)", ofType: "\(fileType)")!
        do {
            self.data = try NSData(contentsOfFile: path, options: NSDataReadingOptions.DataReadingUncached)
            self.stringData = NSString(data: data, encoding: NSUTF8StringEncoding)
        } catch {
            print("error ")
        }
        print("data read: \(stringData)")
        
        return data
    }  
}