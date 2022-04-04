//
//  SettingsView.swift
//  UIKit Mixed With SwiftUI
//
//  Created by João Pedro on 04/04/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
   
        VStack(spacing: 0) {
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 8) {
                    ForEach(0..<10) { _ in
                        ProfileAvatar()
                    }
                }
                .frame(height: 100, alignment: .top)
            })
            .padding(.all, 16)
            .background(Color("MyEvenLighterGrey"))
            
            List {
                Section {
                    ForEach(0..<2) { _ in
                        SettingsButtonView()
                    }
                } header: {
                    Text("First Section")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                .listRowSeparator(.hidden)
                
                Section {
                    ForEach(0..<2) { _ in
                        SettingsButtonView()
                    }
                } header: {
                    Text("Second Section")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                .listRowSeparator(.hidden)
                
                Section {
                    ForEach(0..<3) { _ in
                        SettingsButtonView()
                    }
                } header: {
                    Text("Third Section")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                .listRowSeparator(.hidden)
                
                Section {
                    ForEach(0..<2) { _ in
                        SettingsButtonView()
                    }
                } header: {
                    Text("Fourth Section")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                
                .listRowSeparator(.hidden)
            }
            .listStyle(.grouped)
            .background(Color("MyGrey"))
        }
        .background(Color("MyGrey"))
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
