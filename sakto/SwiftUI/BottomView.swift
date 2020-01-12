//
//  BottomView.swift
//  sakto
//
//  Created by Michael Tadeo on 1/11/20.
//  Copyright © 2020 Tadeo Man. All rights reserved.
//

import SwiftUI

struct BottomView: View {
    
    @EnvironmentObject var obs: observer
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                
                if self.obs.last != -1 {
                    
                    self.obs.updateDB(id: self.obs.users[self.obs.last], status: "")
                }
                
            }) {
                Image("reload").resizable().frame(width: 25, height: 25).padding()
            }.foregroundColor(.yellow)
                .background(Color.white)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
                if self.obs.last == -1 {
                    
                    //first user
                    self.obs.updateDB(id: self.obs.users[self.obs.users.count - 1], status: "rejected")
                }
                else {
                    
                    self.obs.updateDB(id: self.obs.users[self.obs.last - 1], status: "rejected")
                }

            }) {
                Image("clear").resizable().frame(width: 30, height: 30).padding()
            }.foregroundColor(.pink)
                .background(Color.white)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
            }) {
                Image("star").resizable().frame(width: 25, height: 25).padding()
            }.foregroundColor(.blue)
                .background(Color.white)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
                if self.obs.last == -1 {
                    
                    //first user
                    self.obs.updateDB(id: self.obs.users[self.obs.users.count - 1], status: "liked")
                }
                else {
                    
                    self.obs.updateDB(id: self.obs.users[self.obs.last - 1], status: "liked")
                }
            }) {
                
                Image("heart").resizable().frame(width: 35, height: 35).padding()
            }.foregroundColor(.blue)
                .background(Color.white)
            .shadow(radius: 25)
            .clipShape(Circle())
            
            Button(action: {
                
            }) {
                Image("current").resizable().frame(width: 25, height: 25).padding()
            }.foregroundColor(.purple)
                .background(Color.white)
            .shadow(radius: 25)
            .clipShape(Circle())
        }
        
    }
}
