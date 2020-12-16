//
//  SignUp.swift
//  splash screen propzi
//
//  Created by Winston T Chikazhe on 14/12/2020.
//

import SwiftUI

struct SignUp: View {
    @State var emailAddress: String = ""
    @State var name: String = ""
    @State var phone: String = ""
    @State var password: String = ""
    var body: some View {
        GeometryReader { geometry in
            VStack (alignment: .center){
                HStack {
                    Image("propzi")
                                        
                }
                
                Text("Create an Account")
                    .font(.title)
                    .font(.system(size: 14, weight: .bold, design: Font.Design.default))
                    .padding(.bottom, 50)
                
                
                
                VStack {
                TextField("Name", text: self.$name)
                            .frame(width: geometry.size.width - 45, height: 50)
                            .textContentType(.emailAddress)
                            .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                            .accentColor(.red)
                            .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                            .cornerRadius(5)
                
                TextField("Email", text: self.$emailAddress)
                        .frame(width: geometry.size.width - 45, height: 50)
                        .textContentType(.emailAddress)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                        .accentColor(.red)
                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                        .cornerRadius(5)
                    
                TextField("Phone", text: self.$phone)
                        .frame(width: geometry.size.width - 45, height: 50)
                        .textContentType(.emailAddress)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                        .accentColor(.red)
                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                        .cornerRadius(5)
                
                TextField("Password", text: self.$password)
                        .frame(width: geometry.size.width - 45, height: 50)
                        .textContentType(.emailAddress)
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                        .accentColor(.red)
                        .background(Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255))
                        .cornerRadius(5)
                }
                .padding()

                Text("Terms of Service and Privacy Policy")
                    .foregroundColor(Color(#colorLiteral(red: 0.1576863825, green: 0.6400369406, blue: 0.7132930756, alpha: 1)))
                    .padding(.bottom, 40)
                    .font(.system(size: 12))
                
                Button(action: {
                    // your action here
                }) {
                    HStack {
                        Text("Create Account")
                    }
                    .padding()
                    .frame(width: geometry.size.width - 40, height: 40)
                    .foregroundColor(Color.white)
                    .background(Color(#colorLiteral(red: 0.1576863825, green: 0.6400369406, blue: 0.7132930756, alpha: 1)))
                    .cornerRadius(5)
                }.padding(.bottom, 40)

                Button(action: {
                            print("Sign up using Facebook Instead")
                        }) {
                            HStack {
                                Image("f_logo_RGB-Blue_58")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                Text("Sign Up with Facebook")
                                    .foregroundColor(Color(#colorLiteral(red: 0.1576863825, green: 0.6400369406, blue: 0.7132930756, alpha: 1)))
                            }
                            
                }
                
                Spacer()
                
            }
        }
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
