//
//  LoginView.swift
//  splash screen propzi
//
//  Created by Winston T Chikazhe on 14/12/2020.
//

import SwiftUI
import Combine

class UserSettings: ObservableObject {
    @Published var loggedIn : Bool = false
    @Published var navigateNowToLogIn: Bool = false
    @Published var navigateNowToSignup: Bool = false
}


struct LoginView: View {
    @EnvironmentObject var settings: UserSettings
    
    @State  private var emailAddress: String = ""
    @State  private var password: String = ""

    var body: some View {
        GeometryReader { geometry in
                VStack (alignment: .center){
                    HStack {
                        Image("propzi")
                            
                    }.padding(.top, 30)
                    .padding(.bottom, 10)
                    
                    Text("Log in to Your Account")
                        .font(.title)
                        .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                        .padding(.bottom, 50)
                    
                    TextField("Email", text: self.$emailAddress)
                        .frame(width: geometry.size.width - 45, height: 50)
                        .textContentType(.emailAddress)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                        .accentColor(.red)
                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                        .cornerRadius(5)
                    
                    
                    TextField("Password", text: self.$password)
                        .frame(width: geometry.size.width - 45, height: 50)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                        .foregroundColor(.gray)
                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                        .textContentType(.password)
                        .cornerRadius(5)
                    
                     Button(action: {
                        self.settings.loggedIn = true
                     }) {
                            HStack {
                                Text("Log In")
                            }
                                .padding()
                                .frame(width: geometry.size.width - 40, height: 40)
                                .foregroundColor(Color.white)
                                .background(Color(#colorLiteral(red: 0.1576863825, green: 0.6400369406, blue: 0.7132930756, alpha: 1)))
                                .cornerRadius(5)
                        }
                         .padding(.bottom, 40)
                    
                    Divider()
                    
                    Button(action: {
                            print("Take to forget password VC")
                            }) {
                            Text("Forgot your password?")
                                .foregroundColor(Color(#colorLiteral(red: 0.1576863825, green: 0.6400369406, blue: 0.7132930756, alpha: 1)))
                    }
                    
                    Spacer()
                    
                }
                .padding(.bottom, 90)
                }    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


