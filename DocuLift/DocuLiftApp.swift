import SwiftUI

@main
struct DocuLiftApp: App {
  
  var body: some Scene {
    WindowGroup {
      TabContainerView(viewModel: TabContainerViewModel())
    }
  }
}
