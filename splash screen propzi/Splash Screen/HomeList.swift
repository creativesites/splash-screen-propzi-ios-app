//
//  HomeList.swift
//  splash screen propzi
//
//  Created by Winston T Chikazhe on 14/12/2020.
//

import SwiftUI

struct HomeList: View {

   var splashcards = splashcardsData
   @State var showContent = false

   var body: some View {
    
      ScrollView {
         VStack {
            HStack {
               VStack {
                  
                HeaderView()
               }
               .padding(.top, 30)
               Spacer()
            }
            

            ScrollView(.horizontal, showsIndicators: false) {
               HStack(spacing: 30.0) {
                  ForEach(splashcards) { item in
                     Button(action: { self.showContent.toggle() }) {
                        GeometryReader { geometry in
                           SplashView(title: item.title,
                                      image: item.image,
                                      color: item.color,
                                      shadowColor: item.shadowColor)
                              .rotation3DEffect(Angle(degrees:
                                 Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                              //.sheet(isPresented: self.$showContent) { ContentView() }
                        }
                        .frame(width: 246, height: 480)
                     }
                  }
               }
               .padding(.leading, 30)
               .padding(.top, 30)
               Spacer()
            }
            Spacer()
           ButtonRow()
            .padding(.bottom, 30)
            
         }
         .padding(.top, 8)
      }
   }
}

#if DEBUG
struct HomeList_Previews: PreviewProvider {
   static var previews: some View {
      HomeList()
   }
}
#endif

struct SplashView: View {

   var title = "Check your home value quickly and easily online"
   var image = "Illustration1"
   var color = Color(#colorLiteral(red: 0.2685751915, green: 0.8209512234, blue: 0.7121270299, alpha: 1))
   var shadowColor = Color("backgroundShadow3")

   var body: some View {
      return VStack(alignment: .leading) {
         Text(title)
            .font(.title)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding(30)
            .lineLimit(6)

         Spacer()

         Image(image)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 246, height: 150)
            .padding(.bottom, 30)
      }
      .background(color)
      .cornerRadius(30)
      .frame(width: 246, height: 420)
      .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
   }
}

struct SplashCard: Identifiable {
   var id = UUID()
   var title: String
   var image: String
   var color: Color
   var shadowColor: Color
}

let splashcardsData = [
    SplashCard(title: "Check your home value quickly and easily online",
          image: "Illustration4",
          color: Color(#colorLiteral(red: 0.2685751915, green: 0.8209512234, blue: 0.7121270299, alpha: 1)),
          shadowColor: Color("backgroundShadow3")),
    SplashCard(title: "Get Propzi alerts on developments & renovations in your area",
          image: "Illustration5",
          color: Color(#colorLiteral(red: 0.9765821099, green: 0.7748613954, blue: 0.3606334925, alpha: 1)),
          shadowColor: Color("backgroundShadow4")),
    SplashCard(title: "Browse mortgages and loans that lower your housing costs",
          image: "Illustration2",
          color: Color(#colorLiteral(red: 0.2685751915, green: 0.8209512234, blue: 0.7121270299, alpha: 1)),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5))
]


