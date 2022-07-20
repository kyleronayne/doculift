import SwiftUI

/// This is the style responsible for the scale effect when a tab bar item is pressed.

struct TabBarItemStyle: ButtonStyle {
  
  /// - Parameters:
  ///   * configuration: The properties of a button
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      .scaleEffect(configuration.isPressed ? 0.95 : 1)
  }
}

