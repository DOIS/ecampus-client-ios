//
//  PotochneTVC.swift
//  CampusClientIOS
//
//  Created by mac on 08.10.2018.
//  Copyright © 2018 SINED. All rights reserved.
//

import UIKit
import UIDropDown

class PotochneTVC: UITableViewController {
    
    let prepodi: [String] = ["prepod0", "prepod1", "prepod2", "prepod3", "prepod4"]
    let cellIdentifier = "voteCell"
    var currentSelection = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return prepodi.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! VoteTVCell
        cell.prepodNameLabel.text = prepodi[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.currentSelection = indexPath.row
        tableView.deselectRow(at: indexPath, animated: true)
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == self.currentSelection {
            return 100
        }
        else {
            return 60
        }
    }
    
}
