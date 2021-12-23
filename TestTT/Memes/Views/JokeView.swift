//
//  JokeView.swift
//  TestTT
//
//  Created by RAES on 23/12/21.
//

import SwiftUI

struct JokeView: View {
    var joke : Joke
    var body: some View {
        HStack{
            AsyncImage(
                url: URL(string: joke.icon_url ?? String()),
                content: { image in
                    image
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .cornerRadius(6)
                }, placeholder: {
                    Image("chuk")
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .cornerRadius(6)
                }
            )
            Text(joke.value ?? String())
                .lineLimit(3)
                .multilineTextAlignment(.trailing)
        }
        .padding()
    }
}

struct JokeView_Previews: PreviewProvider {
    static var previews: some View {
        JokeView(joke: Joke())
    }
}
