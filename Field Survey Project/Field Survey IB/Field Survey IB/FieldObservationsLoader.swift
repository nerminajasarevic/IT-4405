//
//  FieldObservationsLoader.swift
//  Field Survey IB
//
//  Created by Nermina Jašarević on 12/10/21.
//

import Foundation

class FieldObservationsLoader {
    
    class func load(jsonFileName: String) -> FieldObservations? {
        var fieldObservations: FieldObservations?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl) {
            fieldObservations =  try? jsonDecoder.decode(FieldObservations.self, from: jsonData)
        }
        
        return fieldObservations
        
    }
}
