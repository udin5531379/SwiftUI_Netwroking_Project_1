//
//  ContentView.swift
//  Networking_project_1_SwiftUI
//
//  Created by Udin Rajkarnikar on 20/8/29.
//  Copyright © 2020 np.com.udinrajkarnikar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var networkingManager = NetworkingManager()
    
    var body: some View {
        List(networkingManager.dataList) { data in
            
            Text(data.title)
            Text(data.body)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
