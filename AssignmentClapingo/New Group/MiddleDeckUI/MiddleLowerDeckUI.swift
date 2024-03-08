//
//  MiddleLowerDeckUI.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct MiddleLowerDeckUI: View {
    var body: some View {
        VStack{
            VStack{
                Text("Current Plan")
                    .foregroundColor(Color("Color1"))
                Text("3 Days/week ")
                    .foregroundColor(Color("Color1"))
                    .font(.custom("Poppins-Regular", size: 30))
                
                
            }
            .padding()
            
            HStack{
                VStack{
                    Text("Start Date:")
                        .foregroundColor(Color("Color1"))
                    Text("20/03/21")
                        .bold()
                }
                VStack{
                    Text("4 weeks")
                        .foregroundColor(Color("Color1"))
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .frame(height: 1)

                }
                VStack{
                    Text("End Date:")
                        .foregroundColor(Color("Color1"))
                    Text("20/04/21")
                        .bold()
                }
            }
            .padding()
            
            
            HStack{
                VStack{
                    Text("Sessions left:")
                        .foregroundColor(Color("Color1"))
                        
                    Text("21")
                }
                Divider()
                    .frame(width: 5, height: 40)
                VStack{
                    Text("Total Sessions:")
                        .foregroundColor(Color("Color1"))
                    Text("22")
                }
                Divider()
                    .frame(width: 5,height: 40)
                VStack{
                    Text("Backlog Sessions")
                        .foregroundColor(Color("Color1"))
                    HStack {
                        Text("22")
                        Image(systemName: "questionmark.circle")
                    }
                }
            }
            
            Button {
                print("Book a slot tapped")
            } label: {
                Text("Book a slot")
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
        .frame(maxWidth:.infinity, alignment: .leading)
    }
}

struct MiddleLowerDeckUI_Previews: PreviewProvider {
    static var previews: some View {
        MiddleLowerDeckUI()
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}



