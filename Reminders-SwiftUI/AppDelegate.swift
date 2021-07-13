import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  // MARK: - UISceneSession Lifecycle
  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }
  
  
  // MARK: - Core Data Stack -
  lazy var persistentContainer: NSPersistentContainer = {
    let container = NSPersistentContainer(name: "Reminders")
    // loadPersistentStores takes a completion block with two arguments:
    // storeDescription - an instance of NS persistent store description - it is an object that allows you to customize, create and load the underlying store
    // error - value if the creation of this stack failed
    // we won't be doing any customizing, so we can ignore the first argument
    container.loadPersistentStores { (storeDescription, error ) in
      if let error = error as NSError? {
        fatalError("Unresolved error \(error), \(error.userInfo)")
      }
    }
    return container
  }()
}
