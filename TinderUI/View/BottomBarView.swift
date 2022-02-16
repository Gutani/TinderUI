//
//  BottomBarView.swift
//  TinderUI
//
//  Created by Gustavo Malheiros on 15/02/22.
//

import SwiftUI

struct BottomBarMenu: View {
    var body: some View {
        HStack{
            Image(systemName: "return")
                .font(.system(size: 30))
                .foregroundColor(.yellow)
            Spacer()
            Image(systemName: "xmark")
                .font(.system(size: 30))
                .foregroundColor(.red)
            Spacer()
            Image(systemName: "star.fill")
                .font(.system(size: 30))
                .foregroundColor(.blue)
            Spacer()
//            Button(action: {
//                // Book the trip
//            }) {
//                Text("BOOK IT NOW")
//                    .font(.system(.subheadline, design: .rounded))
//                    .bold()
//                    .foregroundColor(.white)
//                    .padding(.horizontal, 35)
//                    .padding(.vertical, 15)
//                    .background(Color.black)
//                    .cornerRadius(10)
//            }
//            .padding(.horizontal, 20)
            Image(systemName: "heart.fill")
                .font(.system(size: 30))
                .foregroundColor(.green)
            Spacer()
            Image(systemName: "bolt.fill")
                .font(.system(size: 30))
                .foregroundColor(.purple)
        }.padding()
    }
}

struct BottomBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBarMenu()
    }
}
