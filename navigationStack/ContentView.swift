//
//  ContentView.swift
//  navigationStack
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                NavigationLink(destination:SecondView()){
                    Text("Take me to the next view!")
                }
                
//                Text("This is the root view! 🌳")
//                    .font(.title)
//                    .fontWeight(.regular)
//                NavigationLink(destination:Text("You've arrived to the Second View! 🎊")) {
//                    Text("Click Me for the second page!")
//                    NavigationLink(destination: Text("You've arrived at the third view! ")
//                        .fontWeight(.light)){
//                        Text("Click me for the third page!")
//                            .fontWeight(.light)
                    } //VStack
            .toolbar{
                ToolbarItemGroup(placement:.status) {
                    NavigationLink(destination: SecondView()) {
                        Text("About")
                        NavigationLink(destination:ThirdView()){
                            Text("Help")
                        }
                }
               
                }
            }
            
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
                } //nav stack
        
                    
                }
            }
//        }
//}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
