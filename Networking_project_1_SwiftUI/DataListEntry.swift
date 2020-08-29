//
//  DataListEntry.swift
//  Networking_project_1_SwiftUI
//
//  Created by Udin Rajkarnikar on 20/8/29.
//  Copyright © 2020 np.com.udinrajkarnikar. All rights reserved.
//

import Foundation

struct DataListEntry: Decodable, Identifiable {
    
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
}
