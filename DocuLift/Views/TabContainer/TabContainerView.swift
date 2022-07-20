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
    TabView(selection: self.$viewModel.selectedTabIndex) {
      Text("Stats")
        .tag(0)
      Text("Routines")
        .tag(1)
      Text("Settings")
        .tag(2)
    }
    .onAppear {
      UITabBar.appearance().isHidden = true
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

struct TabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TabContainerView(viewModel: TabContainerViewModel())
    }
}

