//
//  ContentView.swift
//  BlossomMovie
//
//  Created by Yashasvi Goswami on 15/02/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab(Constants.homeString, systemImage: Constants.homeIconString){
                HomeView()
            }
            Tab(Constants.upcomingString, systemImage: Constants.upcomingIconString){
                Text(Constants.upcomingString)
            }
            Tab(Constants.searchtring, systemImage: Constants.searchIconString){
                Text(Constants.searchtring)
            }
            Tab(Constants.downloadString, systemImage: Constants.downloadIconSting){
                Text(Constants.downloadString)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
