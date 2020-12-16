//
//  ButtonRow.swift
//  splash screen propzi
//
//  Created by Winston T Chikazhe on 14/12/2020.
//

import SwiftUI

struct ButtonRow: View {
    var body: some View {
        VStack {
           
          Button(action: {
              print("button tapped!")
          }) {
              HStack {
                  
                  Text("Get Started")
                      .fontWeight(.semibold)
                      .font(.title)
              }
          }
          .buttonStyle(GradientBackgroundStyle())

          HStack {
              Text("Already a member?")
                 .font(.system(size: 20))
                //.fontWeight()
                  .padding(.leading, 30)
              
            Button(action: {
                        print("Log in now")
                    }) {
                        HStack {
                            
                            Text("Log in")
                                .foregroundColor(Color(#colorLiteral(red: 0.1576863825, green: 0.6400369406, blue: 0.7132930756, alpha: 1)))
                                .font(.system(size: 20))
                                .fontWeight(.heavy)
                                 .padding(.leading, 10)
                        }
                        
            }
            

          }
          .padding(.top, 20)
          .padding(.leading, -20)
        }
        .padding(.top, 30)
        
    }
}

struct ButtonRow_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRow()
    }
}

struct GradientBackgroundStyle: ButtonStyle {
 
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(Color(#colorLiteral(red: 0.2685751915, green: 0.8209512234, blue: 0.7121270299, alpha: 1)))
            .cornerRadius(40)
            .padding(.horizontal, 20)
    }
}
