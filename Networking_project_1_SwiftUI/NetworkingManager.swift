//
//  NetworkingManager.swift
//  Networking_project_1_SwiftUI
//
//  Created by Udin Rajkarnikar on 20/8/29.
//  Copyright © 2020 np.com.udinrajkarnikar. All rights reserved.
//

import Foundation

class NetworkingManager: ObservableObject {
    @Published var dataList = [DataListEntry]() //published is used for data binding
    
    init() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
        
        URLSession.shared.dataTask(with: url){
            (data, _, _) in
            guard let data = data else { return }
            let dataList = try! JSONDecoder().decode([DataListEntry].self, from: data)
            
            DispatchQueue.main.async {
                self.dataList = dataList //green dataList is from the @Published and the right one is from JsonDecoder
                
                print(self.dataList)
            }
        }.resume()
    }
}
