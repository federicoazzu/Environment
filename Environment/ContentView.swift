//
//  ContentView.swift
//  Environment
//
//  Created by Federico on 20/01/2022.
//

import SwiftUI

class DataExample : ObservableObject {
    @Published var text = "Counter"
    @Published var counter = 0
}

struct ContentView: View {
    @StateObject var data = DataExample()
    
    var body: some View {
        VStack {
            TextBlockView()
            OtherSampleView()
        }
        .environmentObject(data)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
