//
//  ViewController.swift
//  TableViewProject
//
//  Created by Jack Simmons on 6/11/18.
//  Copyright © 2018 Jack Simmons. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var userEntry: UITextField?
    var rawUserData: [Data] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func submitEntryButton(_ sender: UIButton) {
        let value: String = userEntry?.text ?? ""
        let diary = DiaryVC()
        let theDatar = Data(input: value)
        rawUserData.append(theDatar)
        diary.recieveData(data: rawUserData)
    }
    
    @IBAction func diaryButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)    // know what these do
        let diaryView = storyboard.instantiateViewController(withIdentifier: "DiaryVC") as? DiaryVC
        self.navigationController?.pushViewController(diaryView!, animated: true)
    }



}

