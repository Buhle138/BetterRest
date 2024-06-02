//
//  ContentView.swift
//  BetterRest
//
//  Created by Buhle Radzilani on 2024/06/02.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeup = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    var body: some View {
        NavigationView{
            VStack{
                Text("When do you want to wake up?")
                    .font(.headline)
                
                DatePicker("Please enter a time", selection: $wakeup, displayedComponents: .hourAndMinute).labelsHidden()
                
                //adding a stepper for users to choose how much sleep they want.
                
                Text("Desired amount of sleep")
                    .font(.headline)
                
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                
                //Determining how much coffee they drink.
                Text("Daily coffee intake")
                    .font(.headline)
                
                Stepper(coffeeAmount == 1 ? "1 cup " : "\(coffeeAmount) cups", value: $coffeeAmount, in: 1...20)
                
            }
            
            .navigationTitle("BetterRest")
            .toolbar{
                Button("Calculate", action: calculatedBedTime)
            }
            
        }
    }
    func calculatedBedTime() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
