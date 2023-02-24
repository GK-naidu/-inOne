//
//  Profile.swift
//  #inOne
//
//  Created by G.K.Naidu on 23/02/23.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        Image("ProfileSample2")
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
