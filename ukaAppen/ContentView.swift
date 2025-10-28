//
//  ContentView.swift
//  ukaAppen
//
//  Created by Kasper Karlsen on 21/09/2025.
//
import SwiftUI
import Combine
import UIKit

struct ContentView: View {
    
    //Choose date for countdown
    let targetDate = Calendar.current.date(from: DateComponents(year: 2026, month: 10, day: 10, hour: 0, minute: 0, second: 0))!
    
    @State private var timeRemaining = ""
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        ZStack {
    
            
            Color(hex: "#FF8D00")
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Tid igjen til UKA!")
                    .font(.custom("BlennyTrial-Black", size: 40))
                    .foregroundColor(.white)
                
                Text(timeRemaining)
                    .font(.custom("BlennyTrial-Black", size: 40))
                    .monospacedDigit()
                    .foregroundColor(.white)
                    .onReceive(timer) { _ in
                        updateCountdown()
                    }
                
                Button(action: {
                }) {
                    Text("Trykk her")
                        .font(.custom("BlennyTrial-Black", size: 30))
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
