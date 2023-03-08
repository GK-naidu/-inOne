//
//  IDprovider.swift
//  #inOne
//
//  Created by G.K.Naidu on 09/03/23.
//

import Foundation
import CoreData

final class IDprovider {
    static let shared = IDprovider()
    
    private let persistentContainer : NSPersistentContainer
    
    // the below context is different from the followed context
    // if error in the code , then replace the following item
    
    private var context : NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    var viewContext : NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "UserID")
        
        persistentContainer.viewContext.automaticallyMergesChangesFromParent = true
        persistentContainer.loadPersistentStores { _, error in
            if let error {
                fatalError("couldn't store the data \(error)")
            }
        }
    }
    
    func save() throws {
        if context.hasChanges {
            try context.save()
        }
    }
}
