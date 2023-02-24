//
//  QrScan.swift
//  #inOne
//
//  Created by G.K.Naidu on 23/02/23.
//

import SwiftUI

struct QrScan: View {
    var body: some View {
        VStack {
            LottieView(fileName: "QRsampleAnim")
            Text("Qr scan")
                .padding()
                .position(x:190,y: 40)
                .font(.title).fontWeight(.bold)
        }
        
        
    }
}

struct QrScan_Previews: PreviewProvider {
    static var previews: some View {
        QrScan()
    }
}
