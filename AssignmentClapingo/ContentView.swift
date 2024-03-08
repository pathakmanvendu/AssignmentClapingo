//
//  ContentView.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    
                }
            SessionView()
                .tabItem {
                    
                }
            Refer&EarnView()
                .tabItem{
                    
                }
            Profile()
                .tabItem {
                    
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
