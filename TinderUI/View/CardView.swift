//
//  CardView.swift
//  TinderUI
//
//  Created by Gustavo Malheiros on 15/02/22.
//

import SwiftUI

struct CardView: View, Identifiable {
    
    var id = UUID()
    var mCard:CardStructure
    @State var updateAnimation:CGFloat = 15
    @GestureState var translation:CGSize = .zero
    @GestureState var degrees:Double = 0.0
    
    

    var body: some View {
        GeometryReader { proxy in
            
        let dragGesture = DragGesture().updating($translation) { value, state, _ in
            state = value.translation
        }.updating($degrees) { value, state, _ in
            state = (value.translation.width > 0 ? 4 : -4)
        }

        Image(mCard.image)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: proxy.size.width*0.9, maxHeight: proxy.size.height*0.8)
            .cornerRadius(10)
            .padding(.horizontal, 15)
            .overlay(
                VStack {
                    Text(mCard.title)
                        .font(.system(.headline, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.horizontal, 30)
                        .padding(.vertical, 10)
                        .background(Color.white)
                        .cornerRadius(5)
                }
                .padding([.bottom], 20), alignment: .bottom)
            .position(x: proxy.frame(in: .global).midX, y: proxy.frame(in: .global).midY - 30)
            .offset(x: translation.width, y: 0)
            .rotationEffect(.degrees(degrees)).animation(.easeInOut)
            .gesture(dragGesture)
            .animation(Animation.interactiveSpring())
            
        }.ignoresSafeArea(.all)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            CardView(mCard: VMCard().cardViewInfo[1])
        }
    }
}
