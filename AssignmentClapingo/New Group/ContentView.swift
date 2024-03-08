//
//  ContentView.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectIndex = 0
    private var singleTabWidth = UIScreen.main.bounds.width / 4
    var body: some View {
        ZStack(alignment:.bottomLeading) {
            
            
            
            TabView(selection: $selectIndex){
                HomeView()
                    .tabItem {
                        VStack {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    }.tag(0)
                SessionView()
                    .tabItem {
                        VStack {
                            Image(systemName: "person.crop.rectangle.fill")
                            Text("Session")
                        }
                    }.tag(1)
                ReferEarnView()
                    .tabItem{
                        VStack {
                            Image(systemName: "person.2.wave.2")
                            Text("Refer & Earn")
                        }
                    }.tag(2)
                ProfileView()
                    .tabItem {
                        VStack {
                            Image(systemName: "person.fill")
                            Text("Profile")
                        }
                    }.tag(3)
            }
            .accentColor(Color("Color1"))
            
            Rectangle()
                .fill(Color("Color1"))
                .offset(x: singleTabWidth * CGFloat(selectIndex))
                .frame(width: singleTabWidth, height: 3)
                .padding(.bottom, 50)
                .animation(.default)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
