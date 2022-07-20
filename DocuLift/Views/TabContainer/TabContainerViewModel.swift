import Foundation

/// This is the view model for the `TabContainerView`.

final class TabContainerViewModel: ObservableObject {
  
  /// An integer in the range [0,2] representing the selected tab index
  @Published var selectedTabIndex: Int = 1
  
  /// This function sets the selected tab index
  ///
  /// - Parameters:
  ///   * index: An integer in the range [0,2] representing the selected tab index
  public func setSelectedTabIndex(index: Int) {
    self.selectedTabIndex = index
  }
}

