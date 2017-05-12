//
//  CardKey.swift
//  TUM Campus App
//
//  Created by Mathias Quintero on 12/17/16.
//  Copyright © 2016 LS1 TUM. All rights reserved.
//

import Foundation

enum CardKey: Int {
    case tufilm
    case calendar
    case news
    case cafeteria
    case tuition
    case bookRental
    case fsRSS
    
    var description: String {
        switch self {
        case .tufilm:
            return "TU Film"
        case .calendar:
            return "Calendar"
        case .cafeteria:
            return "Cafeteria"
        case .news:
            return "News"
        case .tuition:
            return "Tuition"
        case .bookRental:
            return "Book Rental"
        case .fsRSS:
            return "Fachschaft RSS"
        }
    }
    
    static var all: [CardKey] = [.tufilm, .calendar, .news, .cafeteria, .tuition, .bookRental, .fsRSS,]
    
    static var managers: [CardKey: TumDataItems] = [
        .tufilm: .MovieCard,
        .calendar: .CalendarCard,
        .news: .NewsCard,
        .cafeteria: .CafeteriasCard,
        .tuition: .TuitionStatusSingle,
        .bookRental: .BookRentalCard,
        .fsRSS: .FachschaftRSS,
        ]
}
