//
//  FeedView.swift
//  TwitterClone
//
//  Created by 곽서방 on 3/15/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetsRowView()
                        .padding()
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
