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
                    .font(.custom("Poppins-Bold", size: 25))
                    .bold()
                
                Spacer()
                
                Text("view all")
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(Color("Color1"))
            }
            .padding()
            
            ZStack {
                Card()
                
                HStack(alignment: .top){
                    VStack(alignment: .leading){
                        Image("image")
                            .resizable()
                            .frame(width: 125, height:125)
                            .cornerRadius(10)
                        Text("Dr. Nitish Keshari")
                            .font(.custom("Poppins-Bold",size: 15))
                            .foregroundColor(Color("Color1"))
                            
                        
                        
                    }
                    .padding()
                   
                    
                    VStack(alignment: .leading){
                        Text("Sessions 1")
                            .font(.custom("Poppins-Regular", size: 20))
                            .padding()
                           
                        HStack{
                            Text("Date:")
                                .font(.custom("Poppins-Regular", size: 13))
                                .foregroundColor(Color("Color1"))
                            Text("3/03/21")
                                .font(.custom("Poppins-Regular", size: 13))
                        }
                        HStack{
                            Text("Time:")
                                .font(.custom("Poppins-Regular",size: 13))
                                .foregroundColor(Color("Color1"))
                            Text("23:00-23:25")
                                .font(.custom("Poppins-Regular",size: 13))
                        }
                        HStack {
                            Text("Sessions Notes")
                                .font(.custom("Poppins-Regular",size: 13))
                                .foregroundColor(Color("Color1"))
                            Image(systemName: "arrow.down.square")
                                .foregroundColor(Color("Color1"))
                        }
                        HStack{
                          Text("Cancel")
                                .padding(.trailing)
                                .font(.custom("Poppins-Regular",size: 13))
                            Button {
                                
                            } label: {
                                Text("Join")
                                    .font(.custom("Poppins-Regular",size: 13))
                                    .padding()
                                .foregroundColor(.white)
                                .background(
                                  Rectangle()
                                    .fill(Color("Color1"))
                                    .cornerRadius(10)
                                )
                                .shadow(radius: 2)
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
