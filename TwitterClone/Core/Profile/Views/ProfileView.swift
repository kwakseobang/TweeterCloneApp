//
//  ProfileView.swift
//  TwitterClone
//
//  Created by 곽서방 on 3/15/24.
//

import SwiftUI

struct ProfileView: View {
   
    var body: some View {
        VStack(alignment: .leading){
            HearderView()
            
            actionBtnView()
            
            userInfoDetailView()
            
            TweetFilterVarView()
            
            TweetsView()
           
            Spacer()
        }
    }
}

    
    
    
    
private struct HearderView: View {
   fileprivate var body: some View {
       ZStack(alignment: .bottomLeading) {
           Color(.systemBlue)
               .ignoresSafeArea()
           VStack{
               Button{
                   //TODO: Back
               }label: {
                   Image(systemName: "arrow.left")
                       .resizable()
                       .frame(width: 20,height: 16)
                       .foregroundColor(.white)
                       .offset(x:16,y: 12)
               }
               Circle()
                   .frame(width: 72,height: 72)
                   .offset(x: 16,y: 25)
           }
       }
       .frame(height: 96)
       
   }
}
    
    
private struct actionBtnView: View {
    fileprivate var body: some View {
        HStack(spacing:12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button {
                
            }label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .frame(width: 120,height: 32)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75)
                    )
            }
        }
        .padding(.trailing)
    }
}

private struct userInfoDetailView: View{
    fileprivate var body: some View {
        VStack(alignment: .leading,spacing: 4) {
            HStack{
                Text("Kwak Munsu")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@Taep  ung")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("My favorite food is Meal")
                .font(.subheadline)
                .padding(.vertical)
            
            
            HStack(spacing:24){
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Seoul")
                }
                
                HStack {
                    Image(systemName: "link")
                    
                    Text("www.naver.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            HStack(spacing:24){
                HStack(spacing: 4){
                    Text("674")
                        .font(.subheadline)
                        .bold()
                    
                    Text("Following")
                        .foregroundColor(.gray)
                }
                
                HStack(spacing: 4) {
                    Text("4")
                        .font(.subheadline)
                        .bold()
                    
                    Text("Followers")
                        .foregroundColor(.gray)
                }
            }
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
}

private struct TweetFilterVarView: View {
    @State private var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    fileprivate var body: some View {
        HStack{
            ForEach(TweetFilterViewModel.allCases,id: \.rawValue){ item in
                VStack {
                    Text(item.title)
                        .font(.title3)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                        
                    if selectedFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height:3)
                            .matchedGeometryEffect(id: "fillter", in: animation) //animation
                    } else {
                        Capsule()
                            .foregroundColor(Color(.clear))
                            .frame(height:3)
                    }
                }
                .onTapGesture {
                    withAnimation(.easeInOut) {
                        self.selectedFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x:0,y:16)) //구분선
    }
}
private struct TweetsView: View {
    fileprivate var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 9, id: \.self) { _ in
                    TweetsRowView()
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
