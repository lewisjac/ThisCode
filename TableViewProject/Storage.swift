//
//  Storage.swift
//  TableViewProject
//
//  Created by Jack Simmons on 6/18/18.
//  Copyright © 2018 Jack Simmons. All rights reserved.
/*
 
 Store
 UserDefaults.standard.set(true, forKey: "Key")     //Bool
 UserDefaults.standard.set(1, forKey: "Key")        //Integer
 UserDefaults.standard.set("TEST", forKey: "Key")   //setObject
 
 Retrieve
 UserDefaults.standard.bool(forKey: "Key")
 UserDefaults.standard.integer(forKey: "Key")
 UserDefaults.standard.string(forKey: "Key")
 
 Remove
 UserDefaults.standard.removeObject(forKey: "Key")
 
 */

import Foundation

class Storage {
    
    var anArray: [String] = []
    
    func set(newData: String) {
        
        if let existingData = UserDefaults.standard.array(forKey: "key") as? [String] {
            anArray = existingData
            anArray.append(newData)
            UserDefaults.standard.setValue(anArray, forKey: "key")
        } else {
            anArray.append(newData)
            UserDefaults.standard.setValue(anArray, forKey: "key")
        }
    }
    
    
    func get() -> [String] {
        if let existingData = UserDefaults.standard.array(forKey: "key") as? [String] {
            anArray = existingData
        }
        return anArray
    }
}
