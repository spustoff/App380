//
//  PostsView.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct PostsView: View {
    
    @StateObject var viewModel = PostsViewModel()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                        viewModel.isAdd = true
                        
                    }, label: {
                        
                        Image(systemName: "plus")
                            .foregroundColor(Color("primary"))
                            .font(.system(size: 20, weight: .bold))
                    })
                }
                .padding([.top, .horizontal])
                
                Text("Posts")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                if viewModel.posts.isEmpty {
                    
                    VStack(alignment: .center, spacing: 15, content: {
                        
                        Text("Create posts related to your team")
                            .foregroundColor(.gray)
                            .font(.system(size: 15, weight: .regular))
                            .multilineTextAlignment(.center)
                        
                        Button(action: {
                            
                            viewModel.isAdd = true
                            
                        }, label: {
                            
                            HStack {
                                
                                Image(systemName: "plus")
                                    .foregroundColor(Color("bg"))
                                    .font(.system(size: 14, weight: .medium))
                                
                                Text("CREATE")
                                    .foregroundColor(Color("bg"))
                                    .font(.system(size: 14, weight: .medium))
                            }
                            .padding()
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                        })
                    })
                    .frame(maxHeight: .infinity, alignment: .center)
                    
                } else {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        LazyVStack {
                            
                            ForEach(viewModel.posts, id: \.self) { index in
                            
                                VStack(alignment: .leading, spacing: 10, content: {
                                    
                                    Text(index.name ?? "")
                                        .foregroundColor(.white)
                                        .font(.system(size: 19, weight: .semibold))
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(2)
                                    
                                    Rectangle()
                                        .fill(Color("primary"))
                                        .frame(height: 1)
                                    
                                    Text(index.text ?? "")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14, weight: .regular))
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(5)
                                })
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        .onAppear {
            
            viewModel.fetchPosts()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            PostsAdd(viewModel: viewModel)
        })
    }
}

#Preview {
    PostsView()
}
