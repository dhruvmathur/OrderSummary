//
//  ViewController.swift
//  Shopify
//
//  Created by Dhruv Mathur on 2018-05-03.
//  Copyright © 2018 Dhruv Mathur. All rights reserved.
//

import UIKit

class OrderSummaryScreen: UIViewController {
    
    @IBOutlet weak var provinceTableView: UITableView!
    
    @IBOutlet weak var yearTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        API.makeRequest()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

