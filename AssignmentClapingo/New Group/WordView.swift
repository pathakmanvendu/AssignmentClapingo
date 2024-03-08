//
//  WordView.swift
//  AssignmentClapingo
//
//  Created by Manvendu Pathak on 08/03/24.
//

import SwiftUI

struct WordView: View {
    @State private var data: Word?
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width:350, height: 180)
            
        
        }
        .onAppear{
          
            fetchData()
            print(data)
        }
    }
    
    func fetchData() {
        guard let url = URL(string: "https://api.quotable.io/random") else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {return}
            do {
                let words = try JSONDecoder().decode(Word.self, from: data)
                DispatchQueue.main.async {
                    self.data = words
                }
            }catch{
                print(String(describing: error))
            }
        }
        .resume()
    }
}




struct WordView_Previews: PreviewProvider {
    static var previews: some View {
        WordView()
    }
}
