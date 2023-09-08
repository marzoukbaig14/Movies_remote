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
    @State private var title = "Test"
    
    var body: some View {
        
        VStack {
            
            // "Movies" title
            Text(Header)
                .padding()
                .foregroundColor(Color.red)
                .font(.custom("", size: 50))
            
            // movie name displayed here
            Text(title)
                .onAppear() {
                    var key = movie_names.getMoviesDict()
                    title = key[movie_names.nextMovie()] ?? title
                }
                .padding()
                .font(.custom("", size:26))
            
            // "Next" button
            Button("Next") {
                
                // Section 4
                // getting movie dict since it is private
                var key = movie_names.getMoviesDict()
                
                // setting the title to be the next movie in list
                // unwrapping optional using Nil-Coalescing Operator
                title = key[movie_names.nextMovie()] ?? title
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
