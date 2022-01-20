//
//  OtherSampleView.swift
//  Environment
//
//  Created by Federico on 20/01/2022.
//

import SwiftUI

struct OtherSampleView: View {
    @EnvironmentObject var data : DataExample
    
    var body: some View {
        Text("\(data.text) : \(data.counter)")
    }
}

struct OtherSampleView_Previews: PreviewProvider {
    static var previews: some View {
        OtherSampleView()
            .environmentObject(DataExample())
    }
}
