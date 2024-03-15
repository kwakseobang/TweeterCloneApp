//
//  TweetFilterViewModel.swift
//  TwitterClone
//
//  Created by 곽서방 on 3/15/24.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "replies"
        case .likes: return "likes"
        }
    }
    
}
