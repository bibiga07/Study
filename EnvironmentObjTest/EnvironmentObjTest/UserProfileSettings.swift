//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by bibiga on 3/9/24.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
