//
//  ContentView.swift
//  TinderUI
//
//  Created by Gustavo Malheiros on 15/02/22.
//

import SwiftUI

struct ContentView: View {
    var cardStructure:VMCard
    
    private let dragThreshold: CGFloat = 80.0
    @GestureState var translation:CGSize = .zero
    
    var body: some View {
        GeometryReader { geometryReader in
     
            VStack {
                TopBarMenu()
                Spacer()
                ZStack {
                    ForEach(cardStructure.cardViews) { cardView in
                        cardView.zIndex(self.cardStructure.isTopCard(cardView: cardView.mCard.self) ? 1 : 0)
                    }
                }.position(x: geometryReader.size.width*0.5, y: geometryReader.size.height*0.36)
                Spacer()
                BottomBarMenu()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cardStructure: VMCard())
    }
}
