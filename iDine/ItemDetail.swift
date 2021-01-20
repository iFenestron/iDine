//
//  ItemDetail.swift
//  iDine
//
//  Created by Fenestron on 20.01.2021.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Image(item.mainImage)
                Text("Photo: \(item.photoCredit)")
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(item.description)
                .padding()
            Button("Order This") {
                self.order.add(item: self.item)
            }.font(.headline)
            Spacer()
        }
        .navigationBarTitle(item.name, displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
                }
    }
}
