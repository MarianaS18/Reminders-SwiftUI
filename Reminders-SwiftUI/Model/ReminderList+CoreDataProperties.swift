import Foundation
import CoreData


extension ReminderList {
  static func create(withTitle title: String, in context: NSManagedObjectContext) {
    let newReminderList = ReminderList(context: context)
    newReminderList.title = title
    
    do {
      try context.save()
    } catch {
      let nserror = error as NSError
      fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
    }
  }
  
  @nonobjc public class func fetchRequest() -> NSFetchRequest<ReminderList> {
      return NSFetchRequest<ReminderList>(entityName: "ReminderList")
  }

  @NSManaged public var title: String
  @NSManaged public var reminders: Array<Reminder>
}
