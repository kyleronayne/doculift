import SwiftUI

/// This is the tab bar component which displays tab bar items and changes the selected tab index.

struct TabBar: View {
  private let tabBarItems: [TabBarItemData]
  @Binding private var selectedTabIndex: Int
  
  /// - Parameters:
  ///   * tabBarItems: An array of tab bar items to display
  ///   * selectedTabIndex: An integer in the range [0,2] representing the selected tab index
  public init(tabBarItems: [TabBarItemData], selectedTabIndex: Binding<Int>) {
    self.tabBarItems = tabBarItems
    self._selectedTabIndex = selectedTabIndex
  }
  
  var body: some View {
    HStack(spacing: 0) {
      Spacer()
      ForEach(Array(self.tabBarItems.enumerated()), id: \.offset) { (tabBarItemIndex, tabBarItem) in
        
        Button(action: { self.selectedTabIndex = tabBarItemIndex }) {
          VStack(spacing: 0) {
            Image(systemName: tabBarItemIndex == self.selectedTabIndex ? tabBarItem.icon + ".fill" : tabBarItem.icon)
              .frame(height: 20)
            Text(tabBarItem.label)
          }
        }
        .buttonStyle(TabBarItemStyle())
        .foregroundColor(tabBarItemIndex == self.selectedTabIndex ? .white : .white.opacity(0.70)) // TODO: Use theme colors
        .frame(maxWidth: .infinity)
        
      }
      Spacer()
    }
    .padding(.top, 4)
    .background(Color(red: 0.07, green: 0.07, blue: 0.08)) // TODO: Use theme color
  }
}

/// This is the style responsible for the scale effect when a tab bar item is pressed.

struct TabBarItemStyle: ButtonStyle {
  
  /// - Parameters:
  ///   * configuration: The properties of a button
  func makeBody(configuration: Self.Configuration) -> some View {
    configuration.label
      .scaleEffect(configuration.isPressed ? 0.95 : 1)
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
          selectedTabIndex: .constant(1)
        )
    }
}
