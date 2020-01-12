//
//  TopView.swift
//  sakto
//
//  Created by Michael Tadeo on 1/11/20.
//  Copyright © 2020 Tadeo Man. All rights reserved.
//

import SwiftUI

struct TopView: View {
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                
            }) {
                Image("person").resizable().frame(width: 35, height: 35)
            }.foregroundColor(.gray)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image(systemName: "flame.fill").resizable().frame(width: 35, height: 35)
            }.foregroundColor(.red)
            
            Spacer()
            
            Button(action: {
                
            }) {
                Image("chat").resizable().frame(width: 35, height: 35)
            }.foregroundColor(.gray)
        }.padding()
    }
}


