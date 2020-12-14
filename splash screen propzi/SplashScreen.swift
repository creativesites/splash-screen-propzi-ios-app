//
//  SplashScreen.swift
//  splash screen propzi
//
//  Created by Winston T Chikazhe on 14/12/2020.
//

import SwiftUI
let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
let statusBarHeight = window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
let screen = UIScreen.main.bounds
struct SplashScreen: View {
    var body: some View {
        ZStack(alignment: .top) {
            HomeList()
               .blur(radius:  0)
               .animation(.default)

        }
        //.background(Color("background"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
