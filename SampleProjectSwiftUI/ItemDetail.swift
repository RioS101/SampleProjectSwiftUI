//
//  ItemDetail.swift
//  SampleProjectSwiftUI
//
//  Created by RS on 22.11.21.
//

import SwiftUI

struct ItemDetail: View {
    //to read value from environment
    @EnvironmentObject var order: Order
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            
            Button("Order this") {
                order.add(item: item)
            }
            .font(.headline)
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Capsule())
            
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetail(item: MenuItem.example)
            .environmentObject(Order())
    }
}
