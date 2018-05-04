//
//  ViewController.swift
//  Shopify
//
//  Created by Dhruv Mathur on 2018-05-03.
//  Copyright © 2018 Dhruv Mathur. All rights reserved.
//

import UIKit

class OrderSummaryScreen: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.provincesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = Data.provincesArray[indexPath.row]
        return cell
    }
    
    @IBOutlet weak var provinceTableView: UITableView!
    
    @IBAction func refreshButton(_ sender: Any) {
        self.provinceTableView.reloadData()
    }
    
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

