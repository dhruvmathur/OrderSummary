//
//  ODP.swift
//  Shopify
//
//  Created by Dhruv Mathur on 2018-05-07.
//  Copyright © 2018 Dhruv Mathur. All rights reserved.
//

import UIKit

class OrderDetailPage: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewCells: UITableView!
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "maincell")!
        switch (indexPath.section) {
        case 0:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 1:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 2:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 3:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 4:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 5:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 6:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 7:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 8:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        case 9:
            cell.textLabel?.text = "Order \(indexPath.row+1)"
            return cell
        default:
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
            case 0:
                return Data.valueDict[section]
            case 1:
                return Data.valueDict[section]
            case 2:
                return Data.valueDict[section]
            case 3:
                return Data.valueDict[section]
            case 4:
                return Data.valueDict[section]
            case 5:
                return Data.valueDict[section]
            case 6:
                return Data.valueDict[section]
            case 7:
                return Data.valueDict[section]
            case 8:
                return Data.valueDict[section]
            case 9:
                return Data.valueDict[section]
            default:
                return Data.valueDict[section]
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 9
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
        case 0:
            return Data.keyDict[section]
        case 1:
            return Data.keyDict[section]
        case 2:
            return Data.keyDict[section]
        case 3:
            return Data.keyDict[section]
        case 4:
            return Data.keyDict[section]
        case 5:
            return Data.keyDict[section]
        case 6:
            return Data.keyDict[section]
        case 7:
            return Data.keyDict[section]
        case 8:
            return Data.keyDict[section]
        case 9:
            return Data.keyDict[section]
        default:
            return Data.keyDict[section]
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
