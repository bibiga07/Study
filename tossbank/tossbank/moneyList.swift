//
//  moneyList.swift
//  tossbank
//
//  Created by bibiga on 2/10/24.
//

import SwiftUI

struct moneyList: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .cornerRadius(25)
                .frame(width: 350,height: 200)
            VStack {
                Text("계좌                                                    >")
                    .font(.system(size: 20))
                    .bold()
                HStack {
                    Rectangle()
                        .frame(width:50,height:50)
                        .cornerRadius(100)
                    VStack(alignment: .leading) {
                        Text("KB증권 계좌")
                        Text("500,000,000원")
                    }
                    ZStack {
                        Rectangle()
                            .fill(.gray)
                            .frame(width:50,height:30)
                            .cornerRadius(10)
                        Text("송금")
                            .font(.system(size: 15))
                    }
                    .padding(.leading, 60)
                }
                .padding()
            }
        }
    }
}

#Preview {
    moneyList()
}
