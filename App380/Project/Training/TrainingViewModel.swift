//
//  TrainingViewModel.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI
import CoreData

final class TrainingViewModel: ObservableObject {
    
    @Published var trainings: [TrainingModel] = []
    @Published var isAdd: Bool = false
    
    @Published var name: String = ""
    @Published var repetitions: String = ""
    @Published var approaches: String = ""
    @Published var rate: String = ""
    @Published var time: CGFloat = 0
    
    func addTraining() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "TrainingModel", into: context) as! TrainingModel

        loan.name = name
        loan.repetitions = Int16(repetitions) ?? 0
        loan.approaches = Int16(approaches) ?? 0
        loan.rate = Int16(rate) ?? 0
        loan.time = Int16(time)

        CoreDataStack.shared.saveContext()
    }
    
    func fetchTrainings() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<TrainingModel>(entityName: "TrainingModel")

        do {
            
            let result = try context.fetch(fetchRequest)
        
            self.trainings = result
            
        } catch _ as NSError {
            
            self.trainings = []
        }
    }
}
