//
//  DietsView.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct DietsView: View {
    
    @StateObject var viewModel = DietsViewModel()
    
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
                
                Text("Diets")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                if viewModel.diets.isEmpty {
                    
                    VStack(alignment: .center, spacing: 15, content: {
                        
                        Text("Create diets for your team")
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
                            
                            ForEach(viewModel.diets, id: \.self) { index in
                            
                                Button(action: {
                                    
                                    viewModel.selectedDiet = index
                                    viewModel.isDetail = true
                                    
                                }, label: {
                                    
                                    HStack {
                                        
                                        VStack(alignment: .leading, spacing: 10, content: {
                                            
                                            Text(index.name ?? "")
                                                .foregroundColor(.white)
                                                .font(.system(size: 18, weight: .semibold))
                                            
                                            HStack {
                                                
                                                Image("persons")
                                                
                                                Text("\(index.people_quantity)")
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 16, weight: .semibold))
                                            }
                                        })
                                        
                                        Spacer()
                                        
                                        Image(systemName: "arrow.right")
                                            .foregroundColor(Color("primary"))
                                            .font(.system(size: 15, weight: .semibold))
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                                })
                            }
                        }
                        .padding()
                    }
                }
            }
        }
        .onAppear {
            
            viewModel.fetchDiets()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            DietsAdd(viewModel: viewModel)
        })
        .sheet(isPresented: $viewModel.isDetail, content: {
            
            if let index = viewModel.selectedDiet {
                
                DietsDetail(index: index)
            }
        })
    }
}

#Preview {
    DietsView()
}
