//
//  observer.swift
//  sakto
//
//  Created by Michael Tadeo on 1/11/20.
//  Copyright © 2020 Tadeo Man. All rights reserved.
//

import SwiftUI
import Firebase

class observer: ObservableObject {
    
    @Published var users = [datatype]()
    @Published var last = -1
    
    init() {
        
        let db = Firestore.firestore()
        
        db.collection("users").getDocuments { (snap, err) in
            
            if err != nil {
                
                print((err?.localizedDescription)!)
                return
            }
            
            for i in snap!.documents {
                
                let name = i.get("name") as! String
                let age = i.get("age") as! String
                let image = i.get("image") as! String
                let id = i.documentID
                let status = i.get("status") as! String
                
                if status == "" {
                    
                    self.users.append(datatype(id: id, name: name, image: image, age: age, swipe: 0, degree: 0))
                }
                
                
            }
        }
    }
    
    func update(id: datatype, value: CGFloat, degree: Double){
        
        for i in 0..<self.users.count {
            
            if self.users[i].id == id.id {
                
                self.users[i].swipe = value
                self.users[i].degree = degree
                self.last = i
            }
        }
    }
    
    
    func updateDB(id: datatype, status: String){
        
        let db = Firestore.firestore()
        
        db.collection("users").document(id.id).updateData(["status":status]) { (err) in
            
            if err != nil {
                
                print(err)
                return
            }
            
            print("success")
            
            for i in 0..<self.users.count {
                
                if self.users[i].id == id.id{
                    
                    if status == "liked"{
                        
                        self.users[i].swipe = 500
                    }
                    else if status == "rejected" {
                        
                        self.users[i].swipe = -500
                    }
                    else {
                        
                        self.users[i].swipe = 0
                    }
                }
            }
        }
    }
}

