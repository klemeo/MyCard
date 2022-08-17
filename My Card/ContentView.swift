//
//  ContentView.swift
//  My Card
//
//  Created by VMakhota on 17.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.60, blue: 0.86).ignoresSafeArea()
            VStack {
                Image("image")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(lineWidth: 5)
                    )
                Text("Claus Hefner")
                    .font(.title)
                    .fontWeight(.heavy)
                    
                Text("iOS Developer")
                    .font(.headline)
                    .fontWeight(.light)
                
                Divider()
                CardView(image: "mail.fill", text: "My Email")
                CardView(image: "phone.fill", text: "My Phone")
            }.foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    
    let image: String
    let text: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .padding(.horizontal)
            .overlay(
                HStack {
                    Image(systemName: image)
                    Text(text)
                        .font(.title3)
                        .fontWeight(.semibold)
                }.foregroundColor(Color(red: 0.20, green: 0.60, blue: 0.86))
            )
    }
}
