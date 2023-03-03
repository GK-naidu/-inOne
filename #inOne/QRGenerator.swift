//
//  QRGenerator.swift
//  #inOne
//
//  Created by G.K.Naidu on 27/02/23.
//

import SwiftUI
import Foundation
import CoreImage.CIFilterBuiltins

struct QRGenerator: View {
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var url = ""
    var body: some View {
        Image(uiImage: generatedQR(url))
            .interpolation(.none)
            .resizable()
            .frame(width: 200,height: 200)
    }
    func generatedQR(_ url : String) -> UIImage {
        let data = Data(url.utf8)
        filter.setValue(data, forKey: "inputMessage")
        if let image1 = filter.outputImage{
            if let image2 = context.createCGImage(image1, from: image1.extent){
                return UIImage(cgImage: image2)
            }
        }
        return UIImage(systemName: "home") ?? UIImage()
    }
}

struct QRGenerator_Previews: PreviewProvider {
    static var previews: some View {
        QRGenerator()
    }
}
