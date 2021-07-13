import SwiftUI

struct TagsView: View {
  let tags: Array<Tag>
  
  var body: some View {
    NavigationView {
      VStack {
        List {
          Section {
            ForEach(self.tags, id: \.self) { tag in
              Text("\(tag.title) (\(tag.reminderCount))")
            }
          }
        }
      }
      .navigationBarTitle(Text("Tags"))
    }
  }
}

struct TagsView_Previews: PreviewProvider {
  static var previews: some View {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let tag = Tag(context: context)
    tag.title = "Preview tag"
    return TagsView(tags: [tag])
  }
}
