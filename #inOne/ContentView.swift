
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

struct ContentView: View {

  
    @State var showSignInScreen = false
    
    var body: some View {
        ZStack {
           // SignInViewControllerRepresentable()
            RiveViewModel(fileName: "welcomescreenbganimation")
                .view()
                .ignoresSafeArea()
                .blur(radius: 30)
                .background(Image("Spline")
                    .blur(radius: 50)
                    .offset(x:200,y:200))
            VStack {
                RiveViewModel(fileName: "#inoneanimation")
                    .view()
                    .frame(width: 300,height: 200)
                    .position(x:180,y:170)
                    .opacity(0.8)
                    
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width:350,height: 150)
                        .foregroundColor(.blue.opacity(0.5))
                        .position(x:165,y:30)
                        .shadow(color: .black, radius: 7)
                        .padding()
                    HStack {
                        Text("Welcome  to")
                            .font(.title2)
                            .foregroundColor(.black)
                            .position(x:80,y:5)
                            .fontWeight(.semibold)
                        Text("#inOne").position(x:40,y:5)
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding()
                    Text("Where you can share your social media profile in single tap.")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.8).padding()
                        .position(x:150,y:60)
                        .padding()
                }
                
                Button(action: {
                    self.showSignInScreen = true
                }) {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 300,height: 50)
                        .background(Color.blue)
                        .cornerRadius(30)
                        .shadow(color: .black, radius: 7)
                }
                .fullScreenCover(isPresented: self.$showSignInScreen, content: {
                    SignInViewControllerRepresentable().ignoresSafeArea()
                    
                })
            }
        }
        .padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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

