//
//  TopBarView.swift
//  TinderUI
//
//  Created by Gustavo Malheiros on 15/02/22.
//

import SwiftUI

struct TopBarMenu: View {
    var body: some View {
        HStack {
            Image(systemName: "flame.fill")
                .font(.system(size: 30))
                .foregroundColor(.pink)
            Spacer()
            Image(systemName: "seal.fill")
                .font(.system(size: 30))
                .foregroundColor(.yellow)
            Spacer()
            Image(systemName: "bubble.left.and.bubble.right.fill")
                .font(.system(size: 30))
            Spacer()
            Image(systemName: "person.fill")
                .font(.system(size: 30))
        }
        .padding(.top).padding(.horizontal)
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarMenu()
    }
}
