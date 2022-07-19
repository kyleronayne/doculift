import Foundation

/// This is the view model for the `TabContainerView`.

final class TabContainerViewModel: ObservableObject {
  @Published var selectedTabIndex: Int = 1
}

