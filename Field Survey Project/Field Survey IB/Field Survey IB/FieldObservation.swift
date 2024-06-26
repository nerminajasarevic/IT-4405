//
//  FieldObservation.swift
//  Field Survey IB
//
//  Created by Nermina Jašarević on 12/10/21.
//

import Foundation

enum Classification: String, Codable {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
}

struct FieldObservation: Codable, Identifiable {
    var id = UUID()
    var classification: Classification
    var title: String
    var description: String
    var date: Date
    
    private enum CodingKeys: String, CodingKey {
        case classification, title, description, date
    }
}

struct FieldObservations: Codable {
    var status: String
    var observations: [FieldObservations]
}
