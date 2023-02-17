
//
//  ContentView.swift
//  #inOne
//
//  Created by G.K.Naidu on 25/12/22.
//

import SwiftUI
import RiveRuntime


let storyboard = UIStoryboard(name: "main", bundle: nil)

let viewController = storyboard.instantiateViewController(withIdentifier: "SignInScreen") as UIViewController

struct WelcomeScreen: View {

     @State var showSignUpScreen = false
    @State var showSignInScreen = false
    
    var body: some View {
        ZStack {
             
            Image("loginBackgroundWhite")
                  .resizable()
                  .scaledToFill()
                  .frame (minWidth: 0, maxWidth: .infinity,
                          minHeight: 0, maxHeight: .infinity)
                  .edgesIgnoringSafeArea(.all)
            RiveViewModel(fileName: "WelcomeFinalAnimation")
                .view()
                .ignoresSafeArea()
                .blur(radius: 30)
                .background(Image("Spline")
                .blur(radius: 30))
                .edgesIgnoringSafeArea(.all)

            VStack {

                    
                LottieView(fileName: "#inOneLottieanimaiton")
                    .frame(width: 300,height: 200)
                    .position(x:180,y:170)
                    
                    
                ZStack {
                    
                    HStack {
                        Text(" 👋 Welcome  to")
                            .font(.title2)
                            .foregroundColor(.black)
                            .position(x:80,y:80)
                            .fontWeight(.semibold)
                        
                        Text("#inOne").position(x:-100,y:130)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.blue).opacity(0.8)
                    }
                    .padding()
                    
                    Text("share your social media profile with single tap on a QR")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .position(x:190,y:200).padding()
                        
                }
                
                    Button(action: {
//                        self.showSignInScreen = true
                        self.showSignUpScreen = true
                    }) {
                        
                        Text("Continue")
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 350,height: 50)
                            .background(Color.blue)
                            .cornerRadius(30)
                            .opacity(0.8)
                            .shadow(color: .black, radius: 7)
                        
                    }
                    .padding(.vertical)
                    .fullScreenCover(isPresented: self.$showSignUpScreen) {
                        SignUpScreen().transition(.slide)
                    }
                

                
            }
        }
        
    }
    
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}


