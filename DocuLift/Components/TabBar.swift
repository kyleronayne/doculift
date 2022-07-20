import SwiftUI

/// This is the tab bar component which displays tab bar items and changes the selected tab index.

struct TabBar<ViewModel: TabContainerViewModel>: View {
  private let tabBarItems: [TabBarItemData]
  private let viewModel: ViewModel
  
  /// - Parameters:
  ///   * tabBarItems: An array of tab bar items to display
  ///   * viewModel: A `TabContainerViewModel`
  public init(tabBarItems: [TabBarItemData], viewModel: ViewModel) {
    self.tabBarItems = tabBarItems
    self.viewModel = viewModel
  }
  
  var body: some View {
    HStack(spacing: 0) {
      Spacer()
      ForEach(Array(self.tabBarItems.enumerated()), id: \.offset) { (tabBarItemIndex, tabBarItem) in
        Button(action: { self.viewModel.setSelectedTabIndex(index: tabBarItemIndex) }) {
          VStack(spacing: 0) {
            Image(systemName: tabBarItemIndex == self.viewModel.selectedTabIndex ? tabBarItem.icon + ".fill" : tabBarItem.icon)
              .frame(height: 20)
            Text(tabBarItem.label)
          }
        }
        .buttonStyle(TabBarItemStyle())
        .foregroundColor(tabBarItemIndex == self.viewModel.selectedTabIndex ? .white : .white.opacity(0.70)) // TODO: Use theme colors
        .frame(maxWidth: .infinity)
      }
      Spacer()
    }
    .padding(.top, 4)
    .background(Color(red: 0.07, green: 0.07, blue: 0.08)) // TODO: Use theme color
  }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(
          tabBarItems: [
            TabBarItemData(label: "Stats", icon: "chart.bar"),
            TabBarItemData(label: "Routines", icon: "menucard"),
            TabBarItemData(label: "Settings", icon: "gearshape")
          ],
          viewModel: TabContainerViewModel()
        )
    }
}

