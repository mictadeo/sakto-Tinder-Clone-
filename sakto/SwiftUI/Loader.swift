//
//  Loader.swift
//  sakto
//
//  Created by Michael Tadeo on 1/11/20.
//  Copyright © 2020 Tadeo Man. All rights reserved.
//

import SwiftUI

struct Loader : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<Loader>) -> UIActivityIndicatorView {
        
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.startAnimating()
        return indicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Loader>) {
        
    }
}
