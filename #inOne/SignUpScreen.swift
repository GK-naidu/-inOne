//
//  SignUpScreen.swift
//  #inOne
//
//  Created by G.K.Naidu on 17/02/23.
//

import SwiftUI

struct SignUpScreen: View {
    @State private var Home = false
    @State private var showDetail = false

    var body: some View {
        ZStack {
            Image("loginBackgroundWhite")
                  .resizable()
                  .scaledToFill()
                  .frame (minWidth: 0, maxWidth: .infinity,
                          minHeight: 0, maxHeight: .infinity)
                  .edgesIgnoringSafeArea(.all)
            
            
            VStack{

                LottieView(fileName: "email").padding() .shadow(color: .black, radius: 7)

                
                
                Button(action: {
                       // Action to perform when the button is tapped
                    self.Home = true
                   }) {
                       HStack {
                           Image("apple_Logo_White")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 55, height: 55)
                           Text("Sign Up with Apple")
                               .fontWeight(.semibold)
                               .font(.headline)
                               .foregroundColor(.white)
                               .padding()
                       }
                   }
                   .frame(minWidth: 0, maxWidth: .infinity)
                   .background(Color.black)
                   .cornerRadius(40)
                   .padding(.horizontal)
                   .padding(.vertical)
                   .shadow(color: .black, radius: 7)
                   .fullScreenCover(isPresented: self.$Home) {
                       _inOne.TabBar().transition(.slide).animation(.easeInOut, value : showDetail)
                   }
                
                
                
                
                Button(action: {
                       // Action to perform when the button is tapped
                   }) {
                       HStack {
                           Image("Googl_Logo")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .frame(width: 55, height: 55)
                           Text("Sign Up with Google")
                               .fontWeight(.semibold)
                               .font(.headline)
                               .foregroundColor(.white)
                               .padding()
                       }
                   }
                   .frame(minWidth: 0, maxWidth: .infinity)
                   .background(Color.blue)
                   .cornerRadius(40)
                   .padding(.horizontal)
                   .padding(.vertical)
                   .shadow(color: .black, radius: 7)
                
            }

        }
        
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}


