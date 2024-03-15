//
//  UsersRowView.swift
//  TwitterClone
//
//  Created by 곽서방 on 3/15/24.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack() {
            Circle()
                .frame(width: 48,height: 48)
            
            VStack(alignment: .leading,spacing: 4) {
                Text("Kwak")
                    .font(.subheadline).bold()
                
                Text("JJang")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    UserRowView()
}

