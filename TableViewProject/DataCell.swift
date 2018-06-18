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
    
    func setLabel(input: Data) {
        dataLabelOne.text = input.userInput
        print("From DataCell: \(input.userInput)")
    }
}
