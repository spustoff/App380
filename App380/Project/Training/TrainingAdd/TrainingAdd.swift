//
//  TrainingAdd.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct TrainingAdd: View {
    
    @StateObject var viewModel: TrainingViewModel
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
                
                Text("New Training")
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
                            
                            Text("Enter Repetitions")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.repetitions.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.repetitions)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .keyboardType(.decimalPad)
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter Approaches")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.approaches.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.approaches)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .keyboardType(.decimalPad)
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Enter Rate")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.rate.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.rate)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .keyboardType(.decimalPad)
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        VStack(alignment: .leading, spacing: 10, content: {
                            
                            Text("Time")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                        
                            HStack {
                                
                                Text("\(String(format: "%.f", viewModel.time))")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                
                                Slider(value: $viewModel.time, in: 0...60, step: 1)
                                
                                Text("60")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                            }
                        })
                        .padding(.top)
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                    .padding()
                    
                    Button(action: {
                        
                        viewModel.addTraining()
                        viewModel.fetchTrainings()
                        
                        router.wrappedValue.dismiss()
                        
                        viewModel.name = ""
                        viewModel.repetitions = ""
                        viewModel.approaches = ""
                        viewModel.rate = ""
                        viewModel.time = 0
                        
                    }, label: {
                        
                        Text("ADD")
                            .foregroundColor(Color("bg"))
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 45)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                            .padding(.horizontal)
                    })
                    .opacity(viewModel.name.isEmpty || viewModel.repetitions.isEmpty || viewModel.approaches.isEmpty || viewModel.rate.isEmpty || viewModel.time == 0 ? 0.5 : 1)
                    .disabled(viewModel.name.isEmpty || viewModel.repetitions.isEmpty || viewModel.approaches.isEmpty || viewModel.rate.isEmpty || viewModel.time == 0 ? true : false)
                }
            }
        }
    }
}

#Preview {
    TrainingAdd(viewModel: TrainingViewModel())
}
