//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Arminius Atta on 05/10/2024.
//
/* Abstract: Profile host displays the username of a stored profile */

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Spacer()
                EditButton()
            }
            
            ProfileSummary(profile: draftProfile)
        }
        .padding()
        
    }
}

#Preview {
    ProfileHost().environment(ModelData())
}
