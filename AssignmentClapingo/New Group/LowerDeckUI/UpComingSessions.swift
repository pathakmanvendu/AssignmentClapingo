//
//  UpComingSessions.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct UpComingSessions: View {
    var body: some View {
        VStack{
            HStack{
                Text("Upcoming Sessions")
                    .font(.custom("Poppins-Black", size: 25))
                    .bold()
                
                Spacer()
                
                Text("view all")
                    .foregroundColor(Color("Color1"))
            }
            .padding()
            
            ZStack {
                Card()
                
                HStack{
                    VStack{
                        Image("image")
                            .resizable()
                            .frame(width: 90, height: 100)
                        Text("Dr. Nitish Keshari")
                        
                    }
                   
                    
                    VStack{
                        Text("Sessions 1")
                        HStack{
                            Text("Date:")
                            Text("3/03/21")
                        }
                        HStack{
                            Text("Time:")
                            Text("23:00-23:25")
                        }
                        HStack {
                            Text("Sessions Notes")
                            Image(systemName: "arrow.down.square")
                        }
                        HStack{
                          Text("Cancel")
                            Button {
                                
                            } label: {
                                Text("Join")
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(
                                        cornerRadius: 20,
                                        style: .continuous
                                    )
                                    .fill(Color("Color1"))
                                )
                                .shadow(radius: 5)
                            }

                        }
                    }
                }
                
                
            }
            
            
        }
    }
}

struct UpComingSessions_Previews: PreviewProvider {
    static var previews: some View {
        UpComingSessions()
    }
}
