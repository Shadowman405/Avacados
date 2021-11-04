//
//  ContentView.swift
//  Avacados
//
//  Created by Maxim Mitin on 4.11.21.
//

import SwiftUI

struct ContentView: View {
    var headers: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack {
                    
                    //MARK: - Header
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 0) {
                            ForEach(headers) { item in
                                HeaderView(header: item)
                            }
                        }
                    }
                    
                    //MARK: - Dishes view
                    Text("Avocado Dishes")
                        .fontWeight(.bold)
                        .modifier(titleModifier())
                    
                    DishesView()
                        .frame(maxWidth: 640)
                    
                    
                    //MARK: - Footer
                    VStack {
                        Text("All about avocados")
                            .font(.system(.title, design: .serif))
                            .fontWeight(.bold)
                            .modifier(titleModifier())
                        
                        
                        Text("Everything you wanted to know about avocado")
                            .font(.system(.body,design: .serif))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            .frame(minHeight: 60)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.bottom, 85)
                

            }
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct titleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData)
    }
}
