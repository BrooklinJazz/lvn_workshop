# Exercise 4 (Take Home)

Putting together everything you've learned in this workshop, convert the following SwiftUI Code into a LiveView Native Template.
You may use your previous exercise solutions to support your solution.

```swift
 VStack {
    MapView()
        .frame(height: 300)

    Image("turtlerock")
        .clipShape(Circle())
        .overlay {
            Circle().stroke(.white, lineWidth: 4)
        }
        .shadow(radius: 7)


    VStack(alignment: .leading) {
        Text("Turtle Rock")
            .font(.title)
        HStack {
            Text("Joshua Tree National Park")
            Spacer()
            Text("California")
        }
        .font(.subheadline)
        .foregroundStyle(.secondary)

        Divider()

        Text("About Turtle Rock")
            .font(.title2)
        Text("Descriptive text goes here.")
    }
    .padding()


    Spacer()
}
```

* Template code belongs in `home_live.swiftui.neex`.
* Style code belongs in `styles/swiftui.ex`

After completing the exercise, you should remove all commented code as it is no longer needed.

## Going Beyond

For more on LiveView Native, consider the following resources:

* LiveView Native Hexdocs: https://hexdocs.pm/live_view_native/overview.html
* LiveVIew Native MapKit: https://github.com/liveview-native/liveview-native-swiftui-mapkit
* LiveView Native blogs (coming soon) on the DockYard blog: https://dockyard.com/blog