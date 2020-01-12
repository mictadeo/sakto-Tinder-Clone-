//
//  SwipeDetailsView.swift
//  sakto
//
//  Created by Michael Tadeo on 1/11/20.
//  Copyright © 2020 Tadeo Man. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct SwipeDetailsView: View {
    
    var name = ""
    var age = ""
    var image = ""
    var height:  CGFloat  = 0
    
    var body: some View {
        
        ZStack {
            AnimatedImage(url: URL(string: image)!).resizable().cornerRadius(20).padding(.horizontal, 15)
            
            VStack {
                
                Spacer ()
                
                HStack {
                    
                    VStack(alignment: .leading, content: {
                        
                        Text(name).font(.system(size: 25)).fontWeight(.heavy).foregroundColor(.white)
                        Text(age).foregroundColor(.white)
                        
                    })
                    
                    Spacer()
                }
            }.padding([.bottom, .leading], 35)
            
            
        }.frame(height: height)
    }
}
