//
//  SettingsView.swift
//  Avacados
//
//  Created by Maxim Mitin on 4.11.21.
//

import SwiftUI

struct SettingsView: View {
    @State private var enableNotification = true
    @State private var backgroundRefresh = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form{
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification){
                        Text("Enable notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh){
                        Text("Background refresh")
                    }
                }
                
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack{
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack{
                            Text("Compability")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack{
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Maksim Mitin")
                        }
                        HStack{
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack{
                            Text("Website")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("swiftuimasterclass.com")
                        }
                        HStack{
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }

                    } else {
                        HStack{
                            Text("Personal message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding")
                        }
                    }
                }
            }
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView() 
    }
}
