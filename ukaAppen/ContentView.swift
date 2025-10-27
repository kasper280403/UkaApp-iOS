//
//  ContentView.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 21/09/2025.
//
import SwiftUI
import Combine

struct ContentView: View {
    // Sett datoen for uka som telles ned til
    let targetDate = Calendar.current.date(from: DateComponents(year: 2026, month: 10, day: 10, hour: 0, minute: 0, second: 0))!
    
    @State private var timeRemaining = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            // Bakgrunnsfarge (fra din Colors.swift-utvidelse)
            Color(hex: "#FF8D00")
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                // Overskrift
                Text("Tid igjen til UKA!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                // Nedtelling
                Text(timeRemaining)
                    .font(.title)
                    .monospacedDigit()
                    .foregroundColor(.white)
                    .onReceive(timer) { _ in
                        updateCountdown()
                    }
                
                // Knapp
                Button(action: {
                    // Ingen handling foreløpig
                }) {
                    Text("Trykk her")
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .foregroundColor(Color(hex: "#FF8D00"))
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
            }
            .padding()
            .onAppear {
                updateCountdown()
            }
        }
    }
    
    // Beregner og oppdaterer nedtellingen
    func updateCountdown() {
        let now = Date()
        let diff = targetDate.timeIntervalSince(now)
        
        if diff > 0 {
            let days = Int(diff) / 86400
            let hours = (Int(diff) % 86400) / 3600
            let minutes = (Int(diff) % 3600) / 60
            let seconds = Int(diff) % 60
            timeRemaining = String(format: "%02d:%02d:%02d:%02d", days, hours, minutes, seconds)
        } else {
            timeRemaining = "Endelig UKA!!!"
        }
    }
}

#Preview {
    ContentView()
}
