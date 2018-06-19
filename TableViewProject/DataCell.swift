//
//  DataCell.swift
//  TableViewProject
//
//  Created by Jack Simmons on 6/17/18.
//  Copyright © 2018 Jack Simmons. All rights reserved.
//

import UIKit

class DataCell: UITableViewCell {
    @IBOutlet weak var dataLabelOne: UILabel!
    
    func setLabel(input: String) {
        dataLabelOne.text = input
        print("From DataCell: \(input)")
    }
}
