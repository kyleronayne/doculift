import SwiftUI

/** This defines screen and component views which can be previewed in light or dark mode. */
struct PreviewBuilder<T: View> {
  
  /// This previews an entire screen.
  /// 
  /// - Parameters:
  ///   - view: A screen in which to preview
  static func preview(screen view: T) -> some View {
    return Group {
      view
        .previewDisplayName("Screen - Light Mode")
      view
        .previewDisplayName("Screen - Dark Mode")
        .colorScheme(.dark)
    }
  }
  
  /// This previews an individual component.
  /// - Parameters:
  ///   - view: A component in which to preview
  static func preview(component view: T) -> some View {
    return Group {
      view
        .previewLayout(.sizeThatFits)
        .previewDisplayName("Component - Light Mode")
      view
        .previewLayout(.sizeThatFits)
        .previewDisplayName("Component - Dark Mode")
        .colorScheme(.dark)
    }
  }
}
