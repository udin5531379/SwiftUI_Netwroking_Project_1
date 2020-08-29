//
//  NetworkingManager.swift
//  Networking_project_1_SwiftUI
//
//  Created by Udin Rajkarnikar on 20/8/29.
//  Copyright © 2020 np.com.udinrajkarnikar. All rights reserved.
//

import Foundation

class NetworkingManager: ObservableObject {
    @Published var dataList = [DataListEntry]() //published is called data binding
}
