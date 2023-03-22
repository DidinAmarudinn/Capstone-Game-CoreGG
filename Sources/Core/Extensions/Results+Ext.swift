//
//  File.swift
//  
//
//  Created by didin amarudin on 19/03/23.
//

import Foundation
import RealmSwift
extension Results {
 
  public func toArray<T>(ofType: T.Type) -> [T] {
    var array = [T]()
    for index in 0 ..< count {
      if let result = self[index] as? T {
        array.append(result)
      }
    }
    return array
  }
}
