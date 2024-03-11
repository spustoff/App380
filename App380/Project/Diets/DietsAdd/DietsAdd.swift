//
//  DietsAdd.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct DietsAdd: View {
    
    
    @StateObject var viewModel: DietsViewModel
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
                
                Text("New Diet")
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold))
                    .padding(.vertical)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack(spacing: 20) {
                        
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
                            
                            Text("Enter Quantity People")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(viewModel.quantity_people.isEmpty ? 1 : 0)
                            
                            TextField("", text: $viewModel.quantity_people)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                                .keyboardType(.decimalPad)
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        VStack(alignment: .leading, spacing: 15, content: {
                            
                            Text("Breakfast")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .semibold))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Protein")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.breakfast_protein.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.breakfast_protein)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Fat")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.breakfast_fat.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.breakfast_fat)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Carbs")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.breakfast_carbs.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.breakfast_carbs)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        })
                        
                        VStack(alignment: .leading, spacing: 15, content: {
                            
                            Text("Lunch")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .semibold))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Protein")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.lunch_protein.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.lunch_protein)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Fat")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.lunch_fat.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.lunch_fat)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Carbs")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.lunch_carbs.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.lunch_carbs)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        })
                        
                        VStack(alignment: .leading, spacing: 15, content: {
                            
                            Text("Dinner")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .semibold))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Protein")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.dinner_protein.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.dinner_protein)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Fat")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.dinner_fat.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.dinner_fat)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Enter Carbs")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.dinner_carbs.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.dinner_carbs)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                                    .keyboardType(.decimalPad)
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        })
                        
                        Button(action: {
                            
                            viewModel.addDiet()
                            viewModel.fetchDiets()
                            
                            router.wrappedValue.dismiss()
                            
                            viewModel.name = ""
                            viewModel.quantity_people = ""
                            
                            viewModel.breakfast_fat = ""
                            viewModel.breakfast_carbs = ""
                            viewModel.breakfast_protein = ""
                            
                            viewModel.lunch_fat = ""
                            viewModel.lunch_carbs = ""
                            viewModel.lunch_protein = ""
                            
                            viewModel.dinner_fat = ""
                            viewModel.dinner_carbs = ""
                            viewModel.dinner_protein = ""
                            
                        }, label: {
                            
                            Text("ADD")
                                .foregroundColor(Color("bg"))
                                .font(.system(size: 15, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                                .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        })
                        .opacity(viewModel.name.isEmpty || viewModel.quantity_people.isEmpty || viewModel.breakfast_protein.isEmpty || viewModel.breakfast_carbs.isEmpty || viewModel.breakfast_fat.isEmpty || viewModel.lunch_protein.isEmpty || viewModel.lunch_carbs.isEmpty || viewModel.lunch_fat.isEmpty || viewModel.dinner_fat.isEmpty || viewModel.dinner_carbs.isEmpty || viewModel.dinner_protein.isEmpty ? 0.5 : 1)
                        .disabled(viewModel.name.isEmpty || viewModel.quantity_people.isEmpty || viewModel.breakfast_protein.isEmpty || viewModel.breakfast_carbs.isEmpty || viewModel.breakfast_fat.isEmpty || viewModel.lunch_protein.isEmpty || viewModel.lunch_carbs.isEmpty || viewModel.lunch_fat.isEmpty || viewModel.dinner_fat.isEmpty || viewModel.dinner_carbs.isEmpty || viewModel.dinner_protein.isEmpty ? true : false)
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    DietsAdd(viewModel: DietsViewModel())
}
