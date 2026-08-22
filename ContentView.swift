import SwiftUI

struct ContentView: View {
    @State private var coins = 100
    @State private var score = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Pool & Soccer IPA")
                .font(.largeTitle)
                .bold()
            
            Text("Coins: 🪙 \(coins)")
                .font(.title2)
                .foregroundColor(.yellow)

            Button(action: {
                score += 1
                coins += 50
            }) {
                Text("Score Goal! (+50 Coins)")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Text("Goals Scored: \(score)")
                .font(.headline)
        }
        .padding()
    }
}
