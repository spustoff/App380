//
//  PostsViewModel.swift
//  App380
//
//  Created by Вячеслав on 3/9/24.
//

import SwiftUI
import CoreData

final class PostsViewModel: ObservableObject {
    
    @Published var posts: [PostModel] = []
    
    @Published var isAdd: Bool = false
    
    @Published var name: String = ""
    @Published var text: String = ""
    
    func addPost() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let loan = NSEntityDescription.insertNewObject(forEntityName: "PostModel", into: context) as! PostModel

        loan.name = name
        loan.text = text

        CoreDataStack.shared.saveContext()
    }
    
    func fetchPosts() {
        
        let context = CoreDataStack.shared.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<PostModel>(entityName: "PostModel")

        do {
            
            let result = try context.fetch(fetchRequest)
        
            self.posts = result
            
        } catch _ as NSError {
            
            self.posts = []
        }
    }
}
