//
//  Home.swift
//  #inOne
//
//  Created by G.K.Naidu on 23/02/23.
//

import SwiftUI

struct Home: View { 
    
    @State var TheUrl = ""
    var body: some View {
//        Image("homeSample")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
        VStack{
            TextField("Enter URL",text: $TheUrl)
            QRGenerator(url: "\(TheUrl)")
        }.padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

