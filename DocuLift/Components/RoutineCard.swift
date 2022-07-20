import SwiftUI

struct RoutineCard: View {
  var body: some View {
    VStack(spacing: 0) {
      Text("Push Day")
        .padding(.bottom, 8)
      HStack(spacing: 0) {
        VStack(alignment: .leading, spacing: 4) {
          Text("Target Muscles")
          Text("Last Performed")
        }
        Spacer()
      }
      .padding(.bottom, 20)
      Button("Start Lift", action: {}) // TODO: Use custom primary button component
    }
    .padding(.all, 4)
    .background(
      ZStack {
        RoundedRectangle(cornerRadius: 16, style: .circular)
          .fill(.clear) // TODO: Use theme color
        RoundedRectangle(cornerRadius: 16)
          .stroke(.red, lineWidth: 2) // TODO: Use theme color
      }
    )
    .frame(maxWidth: .infinity)
  }
}

struct RoutineCard_Previews: PreviewProvider {
  static var previews: some View {
    RoutineCard()
      .padding()
  }
}

