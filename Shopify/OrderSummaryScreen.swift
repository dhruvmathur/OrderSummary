//
//  ViewController.swift
//  Shopify
//
//  Created by Dhruv Mathur on 2018-05-03.
//  Copyright © 2018 Dhruv Mathur. All rights reserved.
//

import UIKit

class OrderSummaryScreen: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var timer : Timer!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.restorationIdentifier == "province"{
            return Data.combinationDictionary.count
        }
        if tableView.restorationIdentifier == "year"{
            return Data.orderNumArray.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if tableView.restorationIdentifier == "year"{
            return "Category: Orders in 2016"
        }else{
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if tableView.restorationIdentifier == "province"{
                let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
                cell.textLabel?.text = "\(Data.keyDict[indexPath.row])"
                cell.detailTextLabel?.text = "\(Data.valueDict[indexPath.row]) orders"
                return cell
            }
            if tableView.restorationIdentifier == "year"{
                let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
                cell.textLabel?.text = "\(Data.orderNumbers[indexPath.row])"
                cell.detailTextLabel?.text = "$\(Data.prices[indexPath.row])"
                return cell
            }else{
                return UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
        }
    }
    
    @IBOutlet weak var orderYearLabel: UILabel!
    
    @IBOutlet weak var provinceTableView: UITableView!
    
    @IBAction func refreshButton(_ sender: Any) {
        self.orderYearLabel.text = "Orders By Year: 2017 has \(Data.years) orders"
        self.provinceTableView.reloadData()
        self.yearTableView.reloadData()
    }
    
    @IBOutlet weak var yearTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        API.makeRequest()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(fetch), userInfo: nil, repeats: false)
    }
    
    @objc func fetch(){
        self.provinceTableView.reloadData()
        self.yearTableView.reloadData()
        self.orderYearLabel.text = "Orders By Year: 2017 has \(Data.years) orders"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

