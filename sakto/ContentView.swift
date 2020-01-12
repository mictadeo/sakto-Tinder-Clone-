//
//  ContentView.swift
//  sakto
//
//  Created by Michael Tadeo on 1/9/20.
//  Copyright © 2020 Tadeo Man. All rights reserved.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct ContentView: View {
    
    @EnvironmentObject var obs: observer
    
    var body: some View {
        
        ZStack {
            
            Color("LightWhite").edgesIgnoringSafeArea(.all)
            
            if obs.users.isEmpty {
                
                Loader()
            }
            
            VStack {
                
                TopView()
                
                SwipeView()
                
                BottomView()
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

