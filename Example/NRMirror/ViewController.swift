//
//  ViewController.swift
//  NRMirror
//
//  Created by Naveen Rana on 27/07/16.
//  Copyright © 2016 Naveen Rana. All rights reserved.
//

import UIKit
import NRMirror


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        liveTest()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func liveTest() {
        let jsonString = "{\"userId\": 1 ,\"name\":\"naveen\",\"emailId\":\"naveen@appster\",\"isActiveUser\": true,\"category\":{\"categoryId\": 2 , \"categoryName\": \"testnaveenrana\"},\"categoryArray\":[{\"categoryId\": 1 , \"categoryName\": \"naveen\"}],\"subUsers\":[\"array1\",\"array2\"]}"
        let dict = try! NSJSONSerialization.JSONObjectWithData(jsonString.dataUsingEncoding(NSUTF8StringEncoding)!, options: .MutableContainers)
        let user = User(dict: dict)
        print("name = \(user.name)")
        
    }
    
}

class User: NRMirror {
    
    var name: String?  //optional string
    var userId = 0 // integer
    var emailId = "" //String
    var isActiveUser = false   //Bool
    var category: Category?    //Optional NRMirror subclass
    var categoryArray = [Category]()  // Array of NRMirror subclass
    var subUsers =  [String]() //Array of strings
    var dictTest =  ["categories": [Category]()]  //Dictionary with key as a string and value is any NRMirror class
    
    
}

class PureClass {
    
}

class Category: NRMirror {
    
    var categoryId = 1
    var categoryName = ""
}


 