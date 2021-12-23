//
//  ContentView.swift
//  TestTT
//
//  Created by RAES on 23/12/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var jokeVM : JokeViewModel
    var body: some View {
        VStack{
            Text("Jokes")
                .font(.title)
            Spacer()
            ScrollView{
                ForEach (jokeVM.response, id: \.self) { joke in
                    JokeView(joke: joke)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
