//
//  ContentView.swift
//  Movies
//
//  Created by Baig, Muhammad on 9/8/23.
//  random commit change

import SwiftUI

struct ContentView: View {
    
    // static title "Movies"
    private let Header = "Movies"
    private let movie_names = Movies()
    
    // Section 4
    @State private var title = "test"
    
    var body: some View {
        
        VStack {
            
            // "Movies" title
            Text(Header)
                .padding()
                .foregroundColor(Color.red)
                .font(.custom("", size: 50))
            
            // movie name displayed here
            Text(title)
                .padding()
                .font(.custom("", size:26))
            
            // "Next" button
            Button("Next") {
                
            }
            .padding()
            .font(.custom("", size:36))
            
        }
    }
}
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
