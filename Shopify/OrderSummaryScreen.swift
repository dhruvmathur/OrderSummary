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
        return Data.combinationDictionary.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
        cell.textLabel?.text = "\(Data.keyDict[indexPath.row])"
        cell.detailTextLabel?.text = "\(Data.valueDict[indexPath.row]) orders"
        return cell
    }
    
    @IBOutlet weak var orderYearLabel: UILabel!
    
    @IBOutlet weak var provinceTableView: UITableView!
    
    @IBAction func refreshButton(_ sender: Any) {
        self.orderYearLabel.text = "Orders By Year: 2017 has \(Data.years) orders"
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

