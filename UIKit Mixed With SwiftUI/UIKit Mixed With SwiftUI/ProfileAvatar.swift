//
//  ProfileAvatar.swift
//  UIKit Mixed With SwiftUI
//
//  Created by João Pedro on 04/04/2022.
//

import SwiftUI

struct ProfileAvatar: View {
    var body: some View {
        Image("avatar")
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
    }
}

struct ProfileAvatar_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAvatar()
    }
}
