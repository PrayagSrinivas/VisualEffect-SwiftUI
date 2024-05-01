//
//  Item.swift
//  VisulEffectAPI
//
//  Created by Srinivas Prayag Sahu on 08/03/24.
//

import SwiftUI

struct Item: Identifiable {
    var id: UUID = .init()
    var color: Color
    var image: Image
}


var items: [Item] = [
    .init(color: .red, image: Image(systemName: "sun.max.fill")),
    .init(color: .blue, image: Image(systemName: "cloud.rain.fill")),
    .init(color: .green, image: Image(systemName: "tree.fill")),
    .init(color: .yellow, image: Image(systemName: "gamecontroller.fill")),
    .init(color: .pink, image: Image(systemName: "playstation.logo")),
    .init(color: .purple, image: Image(systemName: "car.2")),
    .init(color: .black, image: Image(systemName: "moon.dust.fill")),
    .init(color: .cyan, image: Image(systemName: "ladybug")),
    .init(color: .indigo, image: Image(systemName: "carrot.fill")),
    .init(color: .gray, image: Image(systemName: "fossil.shell.fill")),
    .init(color: .teal, image: Image(systemName: "cloud.moon.bolt.circle.fill")),
    .init(color: .orange, image: Image(systemName: "brain.head.profile.fill"))
]


extension [Item] {
    func zIndex(_ item: Item) -> CGFloat {
        if let index = firstIndex(where: {$0.id == item.id}) {
            return CGFloat(count) - CGFloat(index)
        }
        return .zero
    }
}
