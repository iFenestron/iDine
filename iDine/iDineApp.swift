//
//  iDineApp.swift
//  iDine
//
//  Created by Fenestron on 20.01.2021.
//

import SwiftUI

@main
struct iDineApp: App {
    var body: some Scene {
        WindowGroup {
            var order = Order()
            let contentView = AppView().environmentObject(order)
            
        }
    }
}
