//
//  ModelCardView.swift
//  TinderUI
//
//  Created by Gustavo Malheiros on 15/02/22.
//

import Foundation

struct CardStructure: Identifiable {
    var title:String
    var image:String
    var id = UUID()
    
    init( title:String, image:String){
        self.image = image
        self.title = title
    }
    
    init() {
        self.init( title:  "", image: "")
    }
    
}

