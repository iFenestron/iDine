//
//  ItemRow.swift
//  iDine
//
//  Created by Fenestron on 20.01.2021.
//

import SwiftUI

struct ItemRow: View {
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            
            VStack(alignment: .leading) {
                Text(item.name)
                Text(String("$\(item.price)"))
            }
            
        }
        
    }
    
}


struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
