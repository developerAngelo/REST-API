//
//  String+Extenstion.swift
//  REST-API
//
//  Created by Ruthlyn Huet on 3/29/21.
//

import Foundation

extension String {
    func convertDateFormat() -> String {
        var fixDate = ""
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
            if let newDate = dateFormatter.date(from: self){
                dateFormatter.dateFormat = "dd.MM.yyyy"
                fixDate = dateFormatter.string(from: newDate)
            }
        
        return fixDate
    }
}
