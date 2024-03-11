//
//  DietsDetail.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI

struct DietsDetail: View {
    
    let index: DietModel
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.2))
                    .frame(width: 40, height: 5)
                    .padding(.top, 3)
                
                VStack {
                    
                    Text(index.name ?? "")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                    
                    HStack {
                        
                        Image("persons")
                        
                        Text("\(index.people_quantity)")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .semibold))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack(spacing: 20) {
                        
                        VStack(alignment: .center, spacing: 10, content: {
                            
                            Text("Breakfast")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Rectangle()
                                .fill(Color("primary"))
                                .frame(height: 1)
                            
                            HStack {
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Protein")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.breakfast_protein)g")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Fat")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.breakfast_fat)g")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                .frame(maxWidth: .infinity)
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Carbs")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.breakfast_carbs) kcal")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                            }
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        VStack(alignment: .center, spacing: 10, content: {
                            
                            Text("Lunch")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Rectangle()
                                .fill(Color("primary"))
                                .frame(height: 1)
                            
                            HStack {
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Protein")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.lunch_protein)g")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Fat")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.lunch_fat)g")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                .frame(maxWidth: .infinity)
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Carbs")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.lunch_carbs) kcal")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                            }
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        
                        VStack(alignment: .center, spacing: 10, content: {
                            
                            Text("Dinner")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold))
                            
                            Rectangle()
                                .fill(Color("primary"))
                                .frame(height: 1)
                            
                            HStack {
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Protein")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.dinner_protein)g")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Fat")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.dinner_fat)g")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                .frame(maxWidth: .infinity)
                                
                                VStack(alignment: .center, spacing: 5, content: {
                                    
                                    Text("Carbs")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .regular))
                                    
                                    Text("\(index.dinner_carbs) kcal")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                            }
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                    }
                    .padding()
                }
            }
        }
    }
}

//#Preview {
//    DietsDetail()
//}
