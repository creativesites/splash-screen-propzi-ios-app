//
//  HeaderView.swift
//  splash screen propzi
//
//  Created by Winston T Chikazhe on 14/12/2020.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
                Spacer()
            HStack {
                Image("propzi")
                
            }
            .padding()
            Spacer()
            
        }
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
