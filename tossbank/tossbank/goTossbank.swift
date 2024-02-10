//
//  goTossbank.swift
//  tossbank
//
//  Created by bibiga on 2/10/24.
//

import SwiftUI

struct goTossbank: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .cornerRadius(25)
                .frame(width: 350,height: 80)
            Text("토스뱅크                                            >")
                .font(.system(size: 20))
                .bold()
        }
    }
}

#Preview {
    goTossbank()
}
