//
//  SampleProjectSwiftUIApp.swift
//  SampleProjectSwiftUI
//
//  Created by RS on 21.11.21.
//

import SwiftUI

@main
struct SampleProjectSwiftUIApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
