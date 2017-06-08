//
//  TableArticle+CoreDataProperties.swift
//  Article
//
//  Created by lim ravy on 30/5/2560 BE.
//  Copyright © 2560 BE lim ravy. All rights reserved.
//

import Foundation
import CoreData


extension TableArticle {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TableArticle> {
        return NSFetchRequest<TableArticle>(entityName: "TableArticle");
    }

    @NSManaged public var title: String?
    @NSManaged public var desc: String?
    @NSManaged public var image: Bool

}
