//
//  ContentView.swift
//  NavigationStack
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("This is the root view 🌳")
                    .font(.title)
                NavigationLink(destination: SecondView()) {
                    Text("Take me to the second view!")
                }
//                NavigationLink(destination: Text("You've arrived to the Second View 🎊")
//                    .font(.title)) {
//                    Text("Click Me")
//                }
//                NavigationLink(destination: Text("This is the third view 🎁")
//                    .font(.title)
//                    .foregroundColor(Color.yellow)){
//                    Text("Press")
//                }
            }
            .toolbar{
                ToolbarItemGroup(placement: .status){
                    NavigationLink(destination: SecondView()) {
                        Text("About")
                    }
                    NavigationLink (destination: ThirdView()) {
                        Text("Help")
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
