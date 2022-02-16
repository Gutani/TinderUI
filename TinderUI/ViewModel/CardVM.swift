//
//  CardVM.swift
//  TinderUI
//
//  Created by Gustavo Malheiros on 15/02/22.
//

import SwiftUI
import Foundation
import Combine


class VMCard:ObservableObject {
    
    var model:CardStructure = CardStructure()
    
    private func moveCard() {
        cardViews.removeFirst()
        self.lastIndex += 1
        let trip = cardViewInfo[lastIndex % cardViewInfo.count]
        let newCardView = CardView(mCard: CardStructure(title: trip.title, image: trip.image))
        cardViews.append(newCardView)
    }
    
    private var lastIndex = 1
    
    @Published var cardViews:[CardView] = {
        var card = [CardView]()
        for index in 0..<2 {
            card.append(CardView(mCard: VMCard().cardViewInfo[index]))
        }
        return card
    }()
    
    func isTopCard(cardView: CardStructure) -> Bool {
        guard let index = cardViewInfo.firstIndex(where: { $0.id == cardView.id}) else {
            return false
        }
        return index == 0
    }
    var cardViewInfo:[CardStructure] = [
        CardStructure(title: "Yosemite, USA", image: "yosemite-usa"),
        CardStructure(title: "Venice, Italy", image: "venice-italy"),
        CardStructure(title: "Hong Kong", image: "hong-kong"),
        CardStructure(title: "Barcelona, Spain", image: "barcelona-spain"),
        CardStructure(title: "Braies, Italy", image: "braies-italy"),
        CardStructure(title: "Kanangra, Australia", image: "kanangra-australia"),
        CardStructure(title: "Mount Currie, Canada", image: "mount-currie-canada"),
        CardStructure(title: "Ohrid, Macedonia", image: "ohrid-macedonia"),
        CardStructure(title: "Oia, Greece", image: "oia-greece"),
        CardStructure(title: "Palawan, Philippines", image: "palawan-philippines"),
        CardStructure(title: "Salerno, Italy", image: "salerno-italy"),
        CardStructure(title: "Tokyo, Japan", image: "tokyo-japan"),
        CardStructure(title: "West Vancouver, Canada", image: "west-vancouver-canada"),
        CardStructure(title: "Singapore", image: "garden-by-bay-singapore"),
        CardStructure(title: "Perhentian Islands, Malaysia", image: "perhentian-islands-malaysia")
    ]
}
