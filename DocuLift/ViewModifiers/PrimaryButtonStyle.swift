import SwiftUI

/// This is the style responsible for the appearance of the primary button.

struct PrimaryButtonStyle: ButtonStyle {
  
  /// - Parameters:
  ///   * configuration: The properties of a button
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      .foregroundColor(.black)
      .padding(.vertical, 4)
      .padding(.horizontal, 24)
      .background(
        ZStack {
          RoundedRectangle(cornerRadius: 8, style: .circular)
            .fill(Color(red: 0.49, green: 0.88, blue: 0.06)) // TODO: Use theme color
          RoundedRectangle(cornerRadius: 8, style: .circular)
            .stroke(.black, lineWidth: 2) // TODO: Use theme color
        }
      )
  }
}

