//
//  Assignment.swift
//  Assignment Notebook
//
//  Created by Lauren Carder on 2/5/19.
//  Copyright © 2019 Lauren Carder. All rights reserved.
//

import UIKit

class Assignment: Codable {
    
    var title : String
    var courseName : String
    var date : String
    var description : String
    
    init(title : String, courseName : String, date : String, description : String){
        self.title = title
        self.courseName = courseName
        self.date = date
        self.description = description
    }

}
