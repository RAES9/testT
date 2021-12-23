//
//  TestTTApp.swift
//  TestTT
//
//  Created by RAES on 23/12/21.
//

import SwiftUI

@main
struct TestTTApp: App {
    @StateObject var jokeVM : JokeViewModel = JokeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(jokeVM)
        }
    }
}
