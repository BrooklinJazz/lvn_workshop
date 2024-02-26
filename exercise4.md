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