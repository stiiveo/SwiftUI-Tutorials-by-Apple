//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Jason Ou on 2022/9/4.
//

import SwiftUI

struct ProfileHost: View {
    /**
     SwiftUI provides storage in the environment for values you can access
     using the @Environment property wrapper.
     Access the editMode value to read or write the edit scope.
     */
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        /**
         Even though this view doesn’t use a property with the @EnvironmentObject attribute,
         ProfileSummary, a child of this view, does. So without the modifier, the preview fails.
         */
        ProfileHost()
            .environmentObject(ModelData())
    }
}
