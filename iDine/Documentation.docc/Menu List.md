# Menu List

This learn while building Menu List


### About SwifUI
1. Views are structs in SwiftUI.
2. All views must conform to the View protocol.
3. That protocol requires a computed property called body that contains the actual layout for the view.
4. It returns some View, which is a Swift feature called opaque return types – it means “one specific sort of view, but we don’t really care which one.”
5. Inside our content view is a small amount of UI: an image showing a globe icon and some text saying “Hello, world”, both wrapped up in a VStack to make them vertically aligned. We’ll be looking at these views in more detail as we progress.
6. There’s are some method calls in place: .imageScale(), .foregroundStyle(), and padding(). In SwiftUI we call these modifiers because they modify the way the text view looks or acts.

# What's in App

```swift
List {
    Text("Hello World")
    Text("Hello World")
    Text("Hello World")
}
```

When the preview updates you’ll now see the equivalent of UIKit’s UITableView with three pieces of text, all saying “Hello World”. 

## In UIkit
In our app the menu will contain a list of items that can be ordered, and tapping one of them will show a new screen with details about that order item. This works just like in UIKit: we wrap our table in a navigation control.

## In SwiftUI

@TabNavigator{
    @Tab("Discussion"){
        In SwiftUI this navigation control is a NavigationStack, which combines the display styling of UINavigationBar and the view controller stack behavior of UINavigationController. To bring one in, just add NavigationStack around your list, like this:

        In this case, we want to apply a navigationTitle() modifier to our list view, which accepts some sort of text to show in the navigation bar. 

        ```swift
        NavigationStack {
            List {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
            .navigationTitle("Menu")
        }
        ```
    }
    @Tab("Preview"){
        ![Menu](Menu_01)
    }
}
