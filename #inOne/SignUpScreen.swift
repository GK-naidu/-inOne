//
//  SignUpScreen.swift
//  #inOne
//
//  Created by G.K.Naidu on 17/02/23.
//

import SwiftUI

struct SignUpScreen: View {
    var body: some View {
        ZStack {
            Image("loginBackgroundWhite")
                  .resizable()
                  .scaledToFill()
                  .frame (minWidth: 0, maxWidth: .infinity,
                          minHeight: 0, maxHeight: .infinity)
                  .edgesIgnoringSafeArea(.all)
            
            
            VStack{

                LottieView(fileName: "email")
                
                Button( action : {}) {
                    Text("Sign Up with Google")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(35.0)
                        .frame(width: 400,height: 60)
                        .foregroundColor(.white)
                        
                }
                
                
                
            }

        }
        
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}


