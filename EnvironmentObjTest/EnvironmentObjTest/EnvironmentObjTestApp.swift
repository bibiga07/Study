//
//  EnvironmentObjTestApp.swift
//  EnvironmentObjTest
//
//  Created by bibiga on 3/9/24.
//

import SwiftUI

@main
struct EnvironmentObjTestApp: App {
    
    @State var userProfile = UserProfileSettings()
    
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}
