//
//  HomeUIView.swift
//  hwa_twitch_swiftui
//
//  Created by vb10 on 1.07.2023.
//

import SwiftUI

struct HomeUIView: View {
    let items: [User] = [User(name: "Veli", age: 20), User(name: "Ali", age: 30)]
    
    @State var stepperValue: Int = 0
    
    var body: some View {
        VStack() {
          
            Text("HWA Twitch")
                .font(.title)
            
            Stepper(value: $stepperValue, in: 1...10) {
                Text("Hello \(stepperValue)")
            }
            Section {
                Text("HELLO")
            }
            List(items){ user in
                Text("\(user.name)")
            }
            
        }
    }
}

struct HomeUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeUIView()
    }
}

struct User: Identifiable {
    var id = UUID()
    
    var name: String
    var age: Int
}
