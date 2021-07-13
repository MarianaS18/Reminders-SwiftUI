import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?
  
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
    
    let context = appDelegate.persistentContainer.viewContext
    // now you have access to the context, so you can set this as a value on the environment object using a key path
    let contentView = ContentView().environment(\.managedObjectContext, context)
    
    if let windowScene = scene as? UIWindowScene {
      let window = UIWindow(windowScene: windowScene)
      window.rootViewController = UIHostingController(rootView: contentView)
      self.window = window
      window.makeKeyAndVisible()
    }
  }
}
