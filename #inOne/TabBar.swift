//
//  Home.swift
//  #inOne
//
//  Created by G.K.Naidu on 23/02/23.
//

import SwiftUI


struct TabBar: View {
    
    init(){
        
        UITabBar.appearance().backgroundColor = UIColor.gray
        UITabBar.appearance().unselectedItemTintColor = .white
        
        
        
    }
    @State private var selection = 0
    
    
    var body: some View {
        
        
        TabView(selection: $selection) {
            
            Home()
                  .tabItem {
                    Label {
                        Text("Home")
                    }icon: {
                        Image(systemName: "house.fill")                    }
                }
                  .tag(0)
            
            
            QrScan()
                    .tabItem {
                    Label {
                        Text("QR scan")
                    }icon: {
                        Image(systemName: "qrcode.viewfinder")
                    }
                }
                    .tag(1)
            
            
            Profile()
                     .tabItem {
                    Label {
                        Text("Profile")
                    }icon: {
                        Image(systemName: "person.fill")
                    }
                }
                     .tag(2)
            
        }
        .accentColor(.black)
    }
    
    
    struct TabBar_Previews: PreviewProvider {
        static var previews: some View {
            TabBar()
        }
    }
}
