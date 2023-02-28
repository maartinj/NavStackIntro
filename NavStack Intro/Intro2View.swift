//
// Created for NavStackIntro1
// by Stewart Lynch on 2022-08-29
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//
import SwiftUI

struct Intro2View: View {
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("NavigationLinks")
        }
    }
}

struct Intro2View_Previews: PreviewProvider {
    static var previews: some View {
        Intro2View()
    }
}

struct Author: Identifiable {
    let name: String
    let numBooks: Int
    let color: Color
    var id: String {
        name
    }
    
    static var sample: [Author] {
        [
            .init(name: "Mark Twain", numBooks: 28, color: .orange),
            .init(name: "Robert Ludlum", numBooks: 27, color: .red),
            .init(name: "Robert Harris", numBooks: 18, color: .purple),
            .init(name: "Jane Austen", numBooks: 7, color: .cyan),
            .init(name: "Agatha Christie", numBooks: 66, color: .blue)
        ]
    }
}
