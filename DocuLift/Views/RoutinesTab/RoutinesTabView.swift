import SwiftUI

/// This view provides an entry-point for creating and accessing routines.

struct RoutinesTabView<ViewModel: RoutinesTabViewModel>: View {
  @ObservedObject private var viewModel: ViewModel
  
  /// - Parameters:
  ///   * viewModel: A `RoutinesTabViewModel`
  public init(viewModel: ViewModel) {
    self.viewModel = viewModel
  }
  
  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
  }
}

struct RoutinesTabView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesTabView(viewModel: RoutinesTabViewModel())
    }
}

