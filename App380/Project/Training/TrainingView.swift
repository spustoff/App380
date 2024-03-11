//
//  TrainingView.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct TrainingView: View {
    
    @StateObject var viewModel = TrainingViewModel()
    
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
                
                Text("Training")
                    .foregroundColor(.white)
                    .font(.system(size: 26, weight: .semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                if viewModel.trainings.isEmpty {
                    
                    VStack(alignment: .center, spacing: 15, content: {
                        
                        Text("Create training sessions\nfor your team")
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
                            
                            ForEach(viewModel.trainings, id: \.self) { index in
                            
                                VStack(spacing: 15) {
                                    
                                    HStack {
                                        
                                        Text(index.name ?? "")
                                            .foregroundColor(.white)
                                            .font(.system(size: 17, weight: .semibold))
                                        
                                        Spacer()
                                        
                                        Image("star")
                                        
                                        Text("\(index.rate)")
                                            .foregroundColor(.white)
                                            .font(.system(size: 15, weight: .semibold))
                                    }
                                    
                                    Rectangle()
                                        .fill(.white)
                                        .frame(height: 1)
                                    
                                    HStack {
                                        
                                        HStack {
                                            
                                            Image("repeat")
                                            
                                            Text("\(index.repetitions)")
                                                .foregroundColor(.white)
                                                .font(.system(size: 18, weight: .semibold))
                                        }
                                        
                                        HStack {
                                            
                                            Image("figure.run")
                                            
                                            Text("\(index.approaches)")
                                                .foregroundColor(.white)
                                                .font(.system(size: 18, weight: .semibold))
                                        }
                                        .frame(maxWidth: .infinity)
                                        
                                        HStack {
                                            
                                            Image("clock")
                                            
                                            Text("\(index.time)")
                                                .foregroundColor(.white)
                                                .font(.system(size: 18, weight: .semibold))
                                        }
                                    }
                                }
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
            
            viewModel.fetchTrainings()
        }
        .sheet(isPresented: $viewModel.isAdd, content: {
            
            TrainingAdd(viewModel: viewModel)
        })
    }
}

#Preview {
    TrainingView()
}
