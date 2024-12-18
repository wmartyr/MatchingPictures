//
//  ContentView.swift
//  MatchingPictures
//
//  Created by Woodrow Martyr on 16/12/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var animals = ["bear", "buffalo", "chick", "chicken", "cow", "crocodile", "dog", "duck", "elephant", "frog", "giraffe", "goat", "gorilla", "hippo", "horse", "monkey", "moose", "narwhal", "owl", "panda", "parrot", "penguin", "pig", "rabbit", "rhino", "sloth", "snake", "walrus", "whale", "zebra"]
    @State private var numberOfAnimals = 2
    @State private var gridSize = 4
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        List {
            ForEach(chooseAnimals(numberOfAnimals), id: \.self) { animal in
                Text(animal)
            }
        }
        .padding()
    }
    
    
    func chooseAnimals(_ numberOfAnimals: Int) -> [String] {
        var chosenAnimals = [String]()
        for _ in 0..<numberOfAnimals {
            let randomIndex = Int.random(in: 0..<self.animals.count)
            chosenAnimals.append(animals[randomIndex])
        }
        return chosenAnimals
    }
}

#Preview {
    ContentView()
}
