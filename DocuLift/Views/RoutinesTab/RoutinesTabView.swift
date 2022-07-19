import SwiftUI

struct RoutinesTabView<ViewModel: RoutinesTabViewModel>: View {
  @ObservedObject private var viewModel: ViewModel
  
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

