import SwiftUI

struct RoutineCard: View {
  var body: some View {
    VStack(spacing: 0) {
      Text("Push Day")
        .foregroundColor(Color(red: 0.49, green: 0.88, blue: 0.06)) // TODO: Use custom font with theme color
        .padding(.bottom, 8)
      VStack(spacing: 4) {
        VStack {
          Text("Target Muscles:")
          Text("Chest, Triceps, & Shoulders")
            .foregroundColor(Color(red: 0.59, green: 0.62, blue: 0.65)) // TODO: Use custom font with theme color
        }
        VStack {
          Text("Last Performed:")
          Text("Yesterday")
            .foregroundColor(Color(red: 0.59, green: 0.62, blue: 0.65)) // TODO: Use custom font with theme color
        }
      }
      .foregroundColor(.white)
      .padding(.bottom, 20)
      Button("Start New Lift", action: {})
        .buttonStyle(PrimaryButtonStyle())
    }
    .padding(.all, 8)
    .frame(maxWidth: .infinity)
    .background(
      ZStack {
        RoundedRectangle(cornerRadius: 16, style: .circular)
          .fill(Color(red: 0.10, green: 0.13, blue: 0.15)) // TODO: Use theme color
        RoundedRectangle(cornerRadius: 16)
          .stroke(Color(red: 0.59, green: 0.62, blue: 0.65), lineWidth: 2) // TODO: Use theme color
      }
    )
  }
}

struct RoutineCard_Previews: PreviewProvider {
  static var previews: some View {
    RoutineCard()
      .padding()
  }
}

