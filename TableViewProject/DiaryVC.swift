//
//  DiaryVC.swift
//  TableViewProject
//
//  Created by Jack Simmons on 6/11/18.
//  Copyright © 2018 Jack Simmons. All rights reserved.
//

import UIKit

class DiaryVC: UITableViewController {
   
    @IBOutlet weak var myTableView: UITableView!
    var dataSet: [Data] = []
    var dataInTransit: [Data] = []
    var theCount: Int?
    var newData: Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        dataSet = createDataSet()
       
    }
    
    func recieveData(data: Data) {
        let newData = data
        dataInTransit.append(newData)
        print(dataInTransit.count)
    }
    
    func createDataSet() -> [Data] {
        return dataInTransit
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSet.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        // THIS POPULATES FROM GIVEN DATA: let cell = UITableViewCell(style: .value1, reuseIdentifier: "myCell")
        // cell.textLabel?.text = self.itemsToLoad[indexPath.row]
        let datai = dataSet[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "DataCell") as! DataCell
        
        cell.setLabel(input: datai)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Oocer selected table row \(indexPath.row)")
    }
}


