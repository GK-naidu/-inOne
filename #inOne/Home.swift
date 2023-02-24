//
//  Home.swift
//  #inOne
//
//  Created by G.K.Naidu on 23/02/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        Image("homeSample")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
