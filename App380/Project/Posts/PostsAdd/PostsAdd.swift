//
//  PostsAdd.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct PostsAdd: View {
    
    @StateObject var viewModel: PostsViewModel
    @Environment(\.presentationMode) var router
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.2))
                    .frame(width: 40, height: 5)
                    .padding(.top, 3)
                
                Text("New Post")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.vertical)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack {
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter Name")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.name.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.name)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter Description")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.text.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.text)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        Button(action: {
                            
                            viewModel.addPost()
                            viewModel.fetchPosts()
                            
                            router.wrappedValue.dismiss()
                            
                            viewModel.name = ""
                            viewModel.text = ""
                            
                        }, label: {
                            
                            Text("ADD")
                                .foregroundColor(Color("bg"))
                                .font(.system(size: 15, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        })
                        .opacity(viewModel.name.isEmpty || viewModel.text.isEmpty ? 0.5 : 1)
                        .disabled(viewModel.name.isEmpty || viewModel.text.isEmpty ? true : false)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    PostsAdd(viewModel: PostsViewModel())
}
