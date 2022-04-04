//
//  SettingsButtonView.swift
//  UIKit Mixed With SwiftUI
//
//  Created by João Pedro on 04/04/2022.
//

import SwiftUI

struct SettingsButtonView: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("Fancy button")
                .foregroundColor(.white)
                .font(.callout)
            Spacer()
            Image("arrow")
                .renderingMode(.template)
                .resizable()
                .frame(width: 20, height: 20)
                .tint(.white)
                .foregroundColor(.white)
                
        }
        .padding()
        .background(Color("MyLighterGrey"))
    }
}

struct SettingsButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButtonView()
    }
}
