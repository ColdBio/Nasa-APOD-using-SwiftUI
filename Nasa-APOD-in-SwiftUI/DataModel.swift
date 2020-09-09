//
//  DataModel.swift
//  Nasa-APOD-in-SwiftUI
//
//  Created by Yunis Farah on 09/09/2020.
//

import SwiftUI

struct DataModel: Codable {
    var copyright: String
    var date: String
    
    var explanation: String
    var hdurl: String
    
    var media_type: String
    var service_version: String
    
    var title: String
    var url: String
}
