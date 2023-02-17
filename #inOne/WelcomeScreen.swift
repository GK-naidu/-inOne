
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

  
    @State var showSignInScreen = false
    
    var body: some View {
        ZStack {

            RiveViewModel(fileName: "WelcomeFinalAnimation")
                .view()
                .ignoresSafeArea()
                .blur(radius: 30)
                .background(Image("Spline")
                .blur(radius: 30))
                .edgesIgnoringSafeArea(.all)

            VStack {

                    
                LottieView(fileName: "#inOneLottieanimation")
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
                    self.showSignInScreen = true
                }) {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300,height: 60)
                        .background(Color.blue)
                        .cornerRadius(30)
                        .shadow(color: .black, radius: 7)
                }
                .fullScreenCover(isPresented: self.$showSignInScreen, content: {
                    SignInViewControllerRepresentable().ignoresSafeArea()
                    
                })
            }
        }
        
    }
    
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}

struct SignInViewControllerRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SignInViewController {
        // Return your SignInViewController here
        return viewController as! SignInViewController
    }
    
    func updateUIViewController(_ uiViewController: SignInViewController, context: Context) {
        // Update your SignInViewController here, if necessary
    }
}


