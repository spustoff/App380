//
//  DietsViewModel.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI
import CoreData

final class DietsViewModel: ObservableObject {
    
    @Published var diets: [DietModel] = []
    
    @Published var isAdd: Bool = false
    @Published var isDetail: Bool = false
    
    @Published var selectedDiet: DietModel? = nil
    
    @Published var name: String = ""
    @Published var quantity_people: String = ""
    
    @Published var breakfast_protein: String = ""
    @Published var breakfast_fat: String = ""
    @Published var breakfast_carbs: String = ""
    
    @Published var lunch_protein: String = ""
    @Published var lunch_fat: String = ""
    @Published var lunch_carbs: String = ""
    
    @Published var dinner_protein: String = ""
    @Published var dinner_fat: String = ""
    @Published var dinner_carbs: String = ""
    
    func addDiet() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "DietModel", into: context) as! DietModel

        loan.name = name
        loan.people_quantity = Int16(quantity_people) ?? 0
        
        loan.breakfast_protein = Int16(breakfast_protein) ?? 0
        loan.breakfast_fat = Int16(breakfast_fat) ?? 0
        loan.breakfast_carbs = Int16(breakfast_carbs) ?? 0
        
        loan.lunch_protein = Int16(lunch_protein) ?? 0
        loan.lunch_fat = Int16(lunch_fat) ?? 0
        loan.lunch_carbs = Int16(lunch_carbs) ?? 0
        
        loan.dinner_protein = Int16(dinner_protein) ?? 0
        loan.dinner_fat = Int16(dinner_fat) ?? 0
        loan.dinner_carbs = Int16(dinner_carbs) ?? 0

        CoreDataStack.shared.saveContext()
    }
    
    func fetchDiets() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<DietModel>(entityName: "DietModel")

        do {
            
            let result = try context.fetch(fetchRequest)
        
            self.diets = result
            
        } catch _ as NSError {
            
            self.diets = []
        }
    }
}
