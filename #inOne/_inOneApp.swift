//
//  _inOneApp.swift
//  #inOne
//
//  Created by G.K.Naidu on 25/12/22.
//

import SwiftUI

@main
struct _inOneApp: App {
    var body: some Scene {
        WindowGroup {
            WelcomeScreen()
                .environment(\.managedObjectContext, IDprovider.shared.viewContext) 
        }
    }
}
