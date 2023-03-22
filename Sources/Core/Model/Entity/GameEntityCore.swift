//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation

import RealmSwift

public class GameEntityCore: Object {
    @objc public dynamic var id: Int = 0
    @objc public dynamic var name: String = ""
    @objc public dynamic var backgroundImage: String = ""
    @objc public dynamic var rating: Double = 0
    @objc public dynamic var released: String = ""
    
    public override class func primaryKey() -> String? {
        return "id"
    }
}

