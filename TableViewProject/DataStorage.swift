//
//  DataStorage.swift
//  TableViewProject
//
//  Created by Jack Simmons on 6/17/18.
//  Copyright © 2018 Jack Simmons. All rights reserved.
//
// UserDefaults Example
//  **SET**
// UserDefaults.standard.set(diary, forKey: Constants.diary)
//  **PULL**
// if let theDiary = UserDefaults.standard.value(forKey: Constants.diary) as? Dictionary<String,Any> {
//
//    self.diary = theDiary
/*
 
 *** STORING DATA ***
 let category = JobCategory(id: 1, name: "Test Category", URLString: "http://www.example-job.com")
 let encodedData = NSKeyedArchiver.archivedData(withRootObject: category)
 let userDefaults = UserDefaults.standard
 
 
 */


import Foundation

class DataStorage {
    
    var dataArray: [Data] = []
    let category = Data(input: <#T##String#>)
    
    private struct Constants {
        static let key = "key"
    }

    
    func setData(data: Data) {
        let newData = data
        
        if let existingData = UserDefaults.standard.value(forKey: Constants.key) as? [Data] {
            dataArray = existingData
            dataArray.append(newData)
            UserDefaults.standard.set(dataArray, forKey: Constants.key)
        } else {
            dataArray.append(newData)
            UserDefaults.standard.set(dataArray, forKey: Constants.key)
        }
    }
    
    func sendTheDatar() -> [Data] {
        
        if let existingData = UserDefaults.standard.value(forKey: Constants.key) as? [Data] {
            dataArray = existingData
        }
        return dataArray
    }
    
}
