import SwiftUI

/// This view displays the tab bar and a selected tab view.

struct TabContainerView<ViewModel: TabContainerViewModel>: View {
  @ObservedObject var viewModel: ViewModel
  
  /// - Parameters:
  ///   * viewModel: A `TabContainerViewModel`
  public init(viewModel: ViewModel) {
    self.viewModel = viewModel
  }
  
  var body: some View {
    ZStack {
      Color.gray // TODO: Use theme color
        .ignoresSafeArea(edges: .top)
      VStack(spacing: 0) {
        Spacer()
        TabView(selection: self.$viewModel.selectedTabIndex) {
          // Hide the default tab bar by omitting each .tabBarItem
          Text("Stats")
            .tag(0)
          Text("Routines")
            .tag(1)
          Text("Settings")
            .tag(2)
        }
        TabBar(
          tabBarItems: [
            TabBarItemData(label: "Stats", icon: "chart.bar"),
            TabBarItemData(label: "Routines", icon: "menucard"),
            TabBarItemData(label: "Settings", icon: "gearshape")
          ],
          viewModel: self.viewModel
        )
      }
    }
  }
}

struct TabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TabContainerView(viewModel: TabContainerViewModel())
    }
}

