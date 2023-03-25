//
//  ContentView.swift
//  Touchdown
//
//  Created by Isaac Iniongun on 25/03/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    var body: some View {
        FooterView()
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
