//
// Created for NavStackIntro1
// by Stewart Lynch on 2022-08-29
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct IntroView: View {
    let items = ["🍎", "🍐", "🍋", "🍑", "🍌", "🍉", "🍇", "🍒", "🫐", "🍓"]
    @State private var isShowingDetailView = false
    var body: some View {
        NavigationView {
            VStack {
                List(items, id: \.self) { fruit in
                    NavigationLink("I choose \(fruit)") {
                        ChosenView(item: fruit)
                    }
                }
                NavigationLink(destination: ChosenView(item: items[7]),
                               isActive: $isShowingDetailView) { EmptyView() }
                
                Button("Tap to show preferred") {
                    isShowingDetailView = true
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
            .navigationTitle("Fruit of the Day")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}

struct ChosenView: View {
    let item: String
    var body: some View {
        Text("You chose \(item)")
            .font(.largeTitle)
    }
}
